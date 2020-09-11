add_llvm_library( LLVMPrintBlocks MODULE
        PrintBlocks.cpp

        PLUGIN_TOOL
        opt
        )
