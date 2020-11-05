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
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"


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
}
char SplitBlocks::ID = 0;

static RegisterPass<SplitBlocks> X("SplitBlocks", "SplitBlocks Pass");

static RegisterStandardPasses Y(
    PassManagerBuilder::EP_EarlyAsPossible,
    [](const PassManagerBuilder &Builder,
       legacy::PassManagerBase &PM) { PM.add(new SplitBlocks()); });
