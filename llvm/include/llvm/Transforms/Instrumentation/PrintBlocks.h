//===- DataFlowSanitizer.h - dynamic data flow analysis -------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
#ifndef LLVM_TRANSFORMS_PRINTBLOCKS_H
#define LLVM_TRANSFORMS_PRINTBLOCKS_H

#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include <string>
#include <vector>



namespace llvm {

    class ModulePass;
    class raw_ostream;

    ModulePass *createPrintBlocksPass();
}

#endif // LLVM_TOOLS_OPT_BREAKPOINTPRINTER_H





/*namespace llvm {


    struct PrintBlocks : public ModulePass {
        static char ID;


    public:
        PrintBlocks(); : ModulePass(ID);
        //~PrintBlocks() = default;

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.setPreservesAll();
        }

        bool runOnModule(Module &M) override;

        static ModulePass *createPrintBlocksPass() {
            return new PrintBlocks();
        }

    };
}*/

//#endif
