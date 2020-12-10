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

    class FunctionPass;
    class raw_ostream;

    static cl::opt<int> split_blocks("split_blocks", cl::Hidden, cl::desc("Split Blocks into give size"),
                                 cl::init(false));
    using namespace std;

    struct SplitBlocks : public FunctionPass
    {
        static char ID;
        SplitBlocks() : FunctionPass(ID) {}


        bool runOnFunction(Function &func) override
        {

            if( split_blocks )
            {
                errs() << "----------- Split Blocks Called -----------\n";

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
                                auto remaining_block = block_iter->splitBasicBlock(instr_iter);

                                bool cont = true;
                                while(remaining_block->size() > split_blocks && cont)
                                {
                                    instr_iter = std::next(remaining_block->begin(), split_blocks - 1);
                                    remaining_block = remaining_block->splitBasicBlock(instr_iter);
                                }
                            }
                        }

                        //fix the phi nodes
                        //Iterate over each block
                        for(unsigned int i = 0; i < block_list.size(); ++i)
                        {
                            auto block_iter = std::next(block_list.begin(), i);

                            //if the block has instructions in it
                            if( block_iter->size() )
                            {
                                //iterate over the instructions
                                for( auto instr_iter = block_iter->begin(); instr_iter != block_iter->end(); ++instr_iter)
                                {
                                    //if the instruction is a Phi Node
                                    if( instr_iter->getOpcode() == 55)
                                    {
                                        PHINode *PN = dyn_cast<PHINode>(&*instr_iter);


                                        errs() << "FOUND A PHI NODE\n";
                                        if( PN && PN->isComplete() )
                                        {
                                            errs() << "NODE IS COMPLETE\n";

                                            auto parent = instr_iter->getParent();
                                            for (auto it = llvm::pred_begin(parent); it != llvm::pred_end(parent); ++it)
                                            {
                                                if( PN->getBasicBlockIndex(*it) >= 0 )
                                                {
                                                    errs() << "FOUND PREDECESSOR\n";
                                                }
                                            }
                                        }
                                        else if(PN)
                                        {
                                            //iterate over the predecessors

                                            auto parent = instr_iter->getParent();
                                            int count = 0;
                                            for (auto it = llvm::pred_begin(parent); it != llvm::pred_end(parent); ++it)
                                            {
                                                if( PN->getBasicBlockIndex(*it) < 0 )

                                                {
                                                    //there isnt a record
                                                    //store the basic block and the value for the previous block

                                                    if(it != llvm::pred_begin(parent))
                                                    {
                                                        errs() << "NODE IS NOT COMPLETE\n";

/*                                                        auto prev_it = llvm::pred_begin(parent);
                                                        for( auto i = 0; i < count; i++)
                                                        {
                                                            prev_it++;
                                                        }
                                                        PN->addIncoming( PN->getIncomingValueForBlock(*prev_it), *it);*/
                                                    }
                                                }
                                                count++;
                                            }
                                            //errs() << "NODE IS NOT COMPLETE\n";
                                        }
                                    }
                                }
  /*
                                  If isComplete() fails, identify which predecessor blocks do not have an entry and what the value being assigned to the phi node is for the block it is split from.
                                        Call addIncoming() to add an entry for the missing block and corresponding value
*/
                            }
                        }


                    }
                }
            }
            return false;
        }
    };

    char SplitBlocks::ID = 0;

    FunctionPass *createSplitBlocksPass() {
        return new SplitBlocks();
    };

}

