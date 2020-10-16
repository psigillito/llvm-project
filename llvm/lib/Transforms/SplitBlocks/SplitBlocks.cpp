#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include <string>
#include <string_view>
#include "llvm/IR/Instruction.h"
#include "llvm/IR/ValueSymbolTable.h"
#include "llvm/Analysis/CFGPrinter.h"
#include <stdlib.h>

using namespace llvm;
using namespace std;

const char* double_indent = "        ";
const char* triple_indent = "            ";
//anonymous namespace to limit to this file
namespace {

    struct SplitBlocks : public ModulePass
    {
        static char ID;
        SplitBlocks() : ModulePass(ID) {}

        bool runOnModule(Module &M) override
        {
            for (auto &func : M.getFunctionList())
            {
                //if we have a block to split
                if( func.getBasicBlockList().size() )
                {
                    errs() << double_indent << "Function Name: " << func.getName() << "\n";
                    errs() << triple_indent << "Number of Blocks: " << func.getBasicBlockList().size() << "\n";

                    //get list of blocks in function
                    auto& block_list = func.getBasicBlockList();

                    //if the function is not empty (does happen)
                    if( !block_list.empty())
                    {
                        for( auto iter = block_list.begin(); iter != block_list.end(); ++iter)
                        {
                            //only split at instructions that are not the first or last instruction
                            if(iter->size() > 2)
                            {
                                    llvm::BasicBlock::iterator instr_iter = iter->begin();
                                    ++instr_iter;
                                    iter->splitBasicBlock(instr_iter);
                            }
                        }
                    }
                }
            }

            for (auto &func : M.getFunctionList())
            {
                if( func.getBasicBlockList().size() )
                {
                    errs() << double_indent << "Edited Function Name: " << func.getName() << "\n";
                    errs() << triple_indent << "New Number of Blocks: " << func.getBasicBlockList().size() << "\n";
                }
            }
                return false;
        }
    };
}
char SplitBlocks::ID = 0;

static RegisterPass<SplitBlocks> X("SplitBlocks", "SplitBlocks Pass");
