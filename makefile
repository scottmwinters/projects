all:
		gcc -Wall -g sorts.c -o sorts

clean:
	rm -rf sorts *.dSYM