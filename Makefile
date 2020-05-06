trie_run: trie_run.c trie.c
	gcc -o trie_run trie_run.c trie.c -I .

clean: | $(wildcard trie_run)
	@test -z "$|" || echo rm $|
	@test -z "$|" || rm $|

include trie.mk
