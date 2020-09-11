//
// Created by phil on 9/1/20.
// some code used from Kaleidoscope example

#include "llvm/ADT/STLExtras.h"
#include "llvm/Analysis/BasicAliasAnalysis.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/IR/DIBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Host.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Transforms/Scalar.h"
#include <cctype>
#include <cstdio>
#include <map>
#include <string>
#include <vector>
#include "llvm/IR/Instructions.h"
#include <stdlib.h>


using namespace llvm;

static LLVMContext Context;
static Module *ModuleObject = new Module("simple compile", Context);

static std::vector<std::string> FunArgs;

Function* createFunc(IRBuilder<> &Builder, std::string Name)
{
    std::vector<Type*>Integers(FunArgs.size(), Type::getInt32Ty(Context));
    FunctionType* funcType = llvm::FunctionType::get(Builder.getInt32Ty(), Integers, false);
    Function *fooFunc = llvm::Function::Create(funcType, llvm::Function::ExternalLinkage, Name, ModuleObject);
    return fooFunc;
}

BasicBlock* createBB(Function *func, std::string name )
{
    return BasicBlock::Create(Context,name,func);
}


int main(int argc, char *argv[])
{

    //std::string block_count = std::string(argv[0]);

    int enteredCount = std::atoi(argv[1]);

    FunArgs.push_back("a");
    FunArgs.push_back("b");

    static IRBuilder<> Builder(Context);

    for(int i = 0; i < enteredCount; ++i )
    {
        std::string func_name = std::to_string(i);
        std::string entry_name ="Block" + std::to_string(i);
        Function *empty_func = createFunc(Builder, func_name);

        BasicBlock* entry = createBB(empty_func, entry_name);
        Builder.SetInsertPoint(entry);
        Builder.CreateRet(0);
    }


    //print generated code
    ModuleObject->print(errs(),nullptr);
    return 0;
}
