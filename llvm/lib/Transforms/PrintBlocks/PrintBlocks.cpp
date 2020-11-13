#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include <string>
#include "llvm/IR/Instruction.h"
#include "llvm/IR/ValueSymbolTable.h"
#include "llvm/Support/CommandLine.h"

using namespace llvm;
using namespace std;

const char* indent = "    ";
const char* double_indent = "        ";
const char* triple_indent = "            ";
//anonymous namespace to limit to this file


namespace {

    static cl::opt<bool> pbarg("pbarg", cl::desc("Don't print informational messages"), cl::NotHidden);


    struct PrintBlocks : public ModulePass
    {

        static char ID;
        PrintBlocks() : ModulePass(ID) {};

        bool runOnModule(Module &M) override {


            if( llvm::test_pass2)
            {
                errs() << "PASS WENT THROUGH\n";


            }
            errs() << "----------Module Info----------\n";
            errs() << "Source File: " << M.getSourceFileName() << "\n";
            errs() << "Module Name: " << M.getName() << "\n\n";

            //print global vars
            errs() << "GLOBAL VARIABaLES\n";
            for( auto global_iter = M.global_begin(); global_iter != M.global_end(); ++global_iter)
            {
                errs() << indent;
                global_iter->print(errs());
                errs() << "\n";
            }

            errs() << "ALIASES" << "\n";
            for( auto alias_iter = M.alias_begin(); alias_iter != M.alias_end(); ++alias_iter)
            {
                errs() << indent;
                alias_iter->print(errs());
                errs() << "\n";
            }

            errs() << "DATA LAYOUT" << "\n";
            errs() << indent <<M.getDataLayoutStr() << "\n";

            errs() <<"FUNCTIONS\n";

            errs() << indent << "Number of Functions: " << M.getFunctionList().size() << "\n";

             for( const auto& func : M.getFunctionList())
            {
                errs() << double_indent << "Function Name: " << func.getName() << "\n";
                errs() << triple_indent <<"Number of Args: " << func.arg_size() << "\n";
                for( auto x = func.arg_begin(); x != func.arg_end(); ++x)
                {
                    errs() << triple_indent <<"Arg Name: " ;
                    x->getType()->print(errs());
                    errs() <<"\n";

                }

                errs() << triple_indent <<"Blocks: " << func.getBasicBlockList().size() << "\n";

                if(func.size())
                {
                    for (auto b = func.begin(); b != func.end(); ++b)
                    {
                        errs() << "\n" << triple_indent << "--Basic Block --\n";

                        errs() << triple_indent << "Label: ";
                        errs() << "\n";                        b->printAsOperand(errs(), false);


                        for ( auto instr = b->begin(); instr != b->end(); ++instr)
                        {
                             errs() << triple_indent << *instr << "\n";
                        }
                    }
                }
                errs() << "\n";
            }
            return false;
        }
    };
}


char PrintBlocks::ID = 0;

ModulePass *createPrintBlocksPass() {
    return new PrintBlocks();
}

//asdfstatic RegisterPass<PrintBlocks> X("PrintBlocks", "Print Blocks Pass");

