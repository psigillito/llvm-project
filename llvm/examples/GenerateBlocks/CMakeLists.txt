set(LLVM_LINK_COMPONENTS
        Core
        ExecutionEngine
        Interpreter
        MC
        MCJIT
        Support
        nativecodegen
        )

add_llvm_example(GenerateBlocks
        generate_basic_blocks.cpp
        )
