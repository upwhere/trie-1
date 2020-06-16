module_path:=$(dir $(lastword $(MAKEFILE_LIST)))

$(module_path)trie.o: $(lastword $(MAKEFILE_LIST))

.PHONY: clean
clean: | $(wildcard $(module_path)trie.o)

undefine module_path
