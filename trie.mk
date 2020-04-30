path:=$(dir $(lastword $(MAKEFILE_LIST)))

clean: $(wildcard $(path)trie.o)

undefine path
