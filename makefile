LLVMCFG = $(shell ~/llvm-project/build/bin/llvm-config --cxxflags --ldflags --system-libs --libs core orcjit native)

.PHONY: all
all:
	clang++ -g -O3 toy.cpp $(LLVMCFG) -o a.out