add_llvm_library( LLVMSplitBlocks MODULE
        SplitBlocks.cpp

        PLUGIN_TOOL
        opt
        )