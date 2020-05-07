trie_run: trie_run.c trie.c $(lastword $(MAKEFILE_LIST))
	gcc -o trie_run trie_run.c trie.c -I .

.PHONY: clean
clean: | $(wildcard trie_run)
	@test -z "$|" || echo rm $|
	@test -z "$|" || rm $|

include trie.mk
