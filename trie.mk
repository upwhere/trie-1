path:=$(dir $(lastword $(MAKEFILE_LIST)))

$(path)trie.o: $(lastword $(MAKEFILE_LIST))

.PHONY: clean
clean: | $(wildcard $(path)trie.o)

undefine path
