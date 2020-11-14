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

const char* indent = "    ";
const char* double_indent = "        ";
const char* triple_indent = "            ";
//anonymous namespace to limit to this file
namespace llvm {

    class ModulePass;
    class raw_ostream;

    static cl::opt<bool> shuffle_blocks("shuffle_blocks", cl::Hidden, cl::desc("Build for Hexagon V67T2"),
                                 cl::init(false));
    using namespace std;

    bool always_true() {return true;}

    struct RenameBlocks : public ModulePass
    {
        static char ID;
        RenameBlocks() : ModulePass(ID) {}

        void shuffle(std::list<int>& passed_in)
        {
            int size = passed_in.size() - 1;
            for( int i = 0; i < size; ++i)
            {
                int rand_range = (passed_in.size() - 1) - i;
                int replace_index = rand() % rand_range;
                errs() << "rand index: " << replace_index << '\n';

                auto iter1 = std::next(passed_in.begin(), replace_index);
                auto iter2 = std::next(passed_in.begin(), rand_range);

                std::swap(*iter1, *iter2);
            }
        }

        void function_block_shuffle(llvm::Function& x)
        {
            int size = x.getBasicBlockList().size() - 1;

            //only shuffle if enough, some functions are empty (demarked by size of -1)
            if( size > 2)
            {
                auto& b_list = x.getBasicBlockList();

                //do range from second element
                //cannot change the first element
                for(int i = 1; i < size; ++i)
                {
                    int rand_range = size - i + 1;
                    int replace_index = (rand() % rand_range) + 1;

                    //get iter before each node we want to swap
                    auto iter1 = std::next(b_list.begin(), rand_range); //end of list
                    auto iter2 = std::next(b_list.begin(), replace_index);
                    --iter1;
                    --iter2;

                    if( rand_range != replace_index)
                    {
                        auto node_one = iter1->getNextNode();

                        //get the iter we are removing
                        auto remove_iter1 = iter1;
                        auto remove_iter2 = iter2;
                        ++remove_iter1;
                        ++remove_iter2;

                        b_list.remove(remove_iter1);
                        b_list.insertAfter(iter2, node_one);

                        //inserted the back value.
                        //now get the next node.
                        auto node_two = node_one->getNextNode();
                        iter2++;
                        iter2++;
                        b_list.remove(iter2);
                        auto iter_final = std::next(b_list.begin(), (rand_range -1));
                        b_list.insertAfter(iter_final, node_two);


                    }
                }
            }
        }

        bool runOnModule(Module &M) override {

            srand (time(NULL));

            for( auto& func : M.functions())
            {
                if( func.size())
                {
                    int counter = 0;
                    for(auto& block : func.getBasicBlockList())
                    {
                        string x = to_string(counter);
                        block.setName(func.getName() + x);

                        std::string Str;
                        raw_string_ostream OS(Str);
                        block.printAsOperand(OS, false);
                        }
                    }
            }

            for( auto& func : M.getFunctionList())
            {

                function_block_shuffle(func);

                errs() <<"FUNCTION: " << func.getName() << "\n";

                if(func.getBasicBlockList().size() > 2)
                {
                    auto& b_list = func.getBasicBlockList();

                    auto r_iter = b_list.begin();
                    r_iter++;

                    auto testy_node = r_iter->getNextNode();

                    auto r_iter2 = r_iter;

                    r_iter++;
                    r_iter2--;

                    b_list.remove(r_iter);
                    b_list.insertAfter(r_iter2,testy_node);

                }



                for(auto& bb : func.getBasicBlockList())
                {
                    bb.printAsOperand(errs(), false);
                    errs() << '\n';
                }
            }
            return false;
        }
    };

    char RenameBlocks::ID = 0;

    ModulePass *createShuffleBlocksPass() {
        return new RenameBlocks();
    };

}



