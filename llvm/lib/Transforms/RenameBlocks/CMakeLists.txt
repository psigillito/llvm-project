add_llvm_library( LLVMRenameBlocks MODULE
        RenameBlocks.cpp

        PLUGIN_TOOL
        opt
        )
