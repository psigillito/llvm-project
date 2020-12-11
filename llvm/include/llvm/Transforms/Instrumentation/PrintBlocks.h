//===- DataFlowSanitizer.h - dynamic data flow analysis -------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
#ifndef LLVM_TRANSFORMS_
#define LLVM_TRANSFORMS_

#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include <string>
#include <vector>
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include <string>
#include "llvm/IR/Instruction.h"
#include "llvm/IR/ValueSymbolTable.h"


namespace llvm {

    class ModulePass;
    class raw_ostream;

    using namespace llvm;
    using namespace std;

static cl::opt<bool> print_blocks("print_blocks", cl::Hidden, cl::desc("Build for Hexagon V67T2"),
                             cl::init(false));

    struct PrintBlocks : public ModulePass
    {
        static char ID;
        PrintBlocks() : ModulePass(ID) {};

        bool runOnModule(Module &M) override {


            if(print_blocks)
            {

                unsigned long long int block_count = 0;
                unsigned long long int instr_count = 0;

                for(auto &func : M.getFunctionList())
                {
                    block_count += func.getBasicBlockList().size();
                    auto& block_list = func.getBasicBlockList();

                    if( !block_list.empty())
                    {
                        //errs() <<"LIST OF BLOCKS \n";

                        auto iter = block_list.begin();
                        for(iter = block_list.begin(); iter != block_list.end(); ++iter)
                        {
                            instr_count += iter->size();

                            /*for( auto x = iter->begin(); x != iter->end(); ++x)
                            {

                            errs() <<"OPCODE: " << x->getOpcode() << "NAME: " << x->getOpcodeName() << "\n";
                            }*/
                        }
                    }
                }

                errs() << "----------- Print Blocks Called -----------\n";
                errs() << "Source File: " << M.getSourceFileName() << "\n";
                errs() << "Module Name: " << M.getName() << "\n";
                errs() << "Number of blocks: " << block_count << "\n";
                errs() << "Instruction count: " << instr_count << "\n";
                if( block_count)
                {
                    errs() << "Average block size (# of instruction): " << (instr_count / block_count) << "\n";
                }
            }
            return false;
        }
    };

char PrintBlocks::ID = 0;


    ModulePass *createPrintBlocksPass()
    {
        return new PrintBlocks();
    };
}

#endif