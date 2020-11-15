/********************************************/

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

    static cl::opt<bool> split_blocks("split blocks", cl::Hidden, cl::desc("Build for Hexagon V67T2"),
                                 cl::init(false));
    using namespace std;

    struct SplitBlocks : public ModulePass
    {
        static char ID;
        SplitBlocks() : ModulePass(ID) {}

        bool runOnModule(Module &M) override {

            srand (time(NULL));

            for (auto &func : M.getFunctionList()) {
                //if we have a block to split
                if( func.getBasicBlockList().size() )
                {
                    //get list of blocks in function
                    auto& block_list = func.getBasicBlockList();

                    //if the function is not empty (does happen)
                    if( !block_list.empty())
                    {
                        auto iter = block_list.begin();
                        for(iter = block_list.begin(); iter != block_list.end(); ++iter)
                        {
                            if(iter->size() > 2)
                            {
                                llvm::BasicBlock::iterator instr_iter = iter->begin();
                                instr_iter++;
                                iter->splitBasicBlock(instr_iter);
                            }
                        }
                    }
                }
            }

            for (auto &func : M.getFunctionList()) {
                errs() << double_indent << " Function Name: " << func.getName() << "\n";
                errs() << triple_indent << "Number of Blocks: " << func.getBasicBlockList().size() << "\n";
            }
            return false;
        }
    };

    char SplitBlocks::ID = 0;

    ModulePass *createSplitBlocksPass() {
        return new SplitBlocks();
    };

}

