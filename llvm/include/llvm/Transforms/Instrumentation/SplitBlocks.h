#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include <string>
#include "llvm/IR/Instruction.h"
#include "llvm/IR/ValueSymbolTable.h"
#include "llvm/Analysis/CFGPrinter.h"
#include <stdlib.h>
#include <string>

using namespace llvm;
using namespace std;

namespace llvm {

    class ModulePass;
    class raw_ostream;

    static cl::opt<int> split_blocks("split_blocks", cl::Hidden, cl::desc("Split Blocks into give size"),
                                 cl::init(false));
    using namespace std;

    struct SplitBlocks : public ModulePass
    {
        static char ID;
        SplitBlocks() : ModulePass(ID) {}

        bool runOnModule(Module &M) override {

            if( split_blocks )
            {
                errs() << "----------- Split Blocks Called -----------\n";

                unsigned long long int block_count = 0;
                unsigned long long int instr_count = 0;
                for(auto &func : M.getFunctionList())
                {
                    block_count += func.getBasicBlockList().size();
                    auto& block_list = func.getBasicBlockList();
                    if( !block_list.empty())
                    {
                        auto iter = block_list.begin();
                        for(iter = block_list.begin(); iter != block_list.end(); ++iter)
                        {
                            instr_count += iter->size();
                        }
                    }
                }
                errs() << "Altered Backend Source File: " << M.getSourceFileName() << "\n";
                errs() << "Module Name: " << M.getName() << "\n";
                errs() << "ABefore: Number of blocks: " << block_count << "\n";
                errs() << "Before: Instr. count: " << instr_count << "\n";
                errs() << "Before: average block size (# of instruction): " << (instr_count / block_count) << "\n";

                for (auto &func : M.getFunctionList()) {
                    //if we have a block to split
                    if( func.getBasicBlockList().size() )
                    {
                        //get list of blocks in function
                        auto& block_list = func.getBasicBlockList();

                        //if the function is not empty (does happen)
                        if( !block_list.empty())
                        {
                            //for each basic block
                            for(unsigned int i = 0; i < block_list.size(); ++i)
                            {
                                auto block_iter = std::next(block_list.begin(), i);

                                if( block_iter->size() > split_blocks)
                                {
                                    auto instr_iter = std::next(block_iter->begin(), split_blocks - 1);
                                    string x = instr_iter->getOpcodeName();
                                    errs() << "FOUND OUR BRANCHING " << x << "\n";

                                    auto remaining_block = block_iter->splitBasicBlock(instr_iter);

                                    while(remaining_block->size() > split_blocks)
                                    {
                                        instr_iter = std::next(remaining_block->begin(), split_blocks - 1);
                                        string x = instr_iter->getOpcodeName();
                                        errs() << "FOUND OUR BRANCHING " << x << "\n";
                                        remaining_block = remaining_block->splitBasicBlock(instr_iter);
                                    }
                                }
                            }
                        }
                    }
                }

                block_count = 0;
                instr_count = 0;
                for(auto &func : M.getFunctionList())
                {
                    block_count += func.getBasicBlockList().size();
                    auto& block_list = func.getBasicBlockList();
                    if( !block_list.empty())
                    {
                        auto iter = block_list.begin();
                        for(iter = block_list.begin(); iter != block_list.end(); ++iter)
                        {
                            instr_count += iter->size();
                        }
                    }
                }
                errs() << "After: Number of blocks: " << block_count << "\n";
                errs() << "After: Instr. count: " << instr_count << "\n";
                errs() << "After: average block size (# of instr): " << (instr_count / block_count) << "\n";
            }
            return false;
        }
    };

    char SplitBlocks::ID = 0;

    ModulePass *createSplitBlocksPass() {
        return new SplitBlocks();
    };

}

