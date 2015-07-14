//Raced someone to do this before they could do pattern matching.
//Same result can be produced with bash with: cat inputFile |colrm 42 > temp && awk '{print $0","}' temp > final
//but this is more c-like and fun


#include <stdio.h>
#include <string.h>
#include <stdlib.h>

FILE *fpIn = NULL;
FILE *fpOut = NULL;


#define CHARS_PER_LINE 27

int main (int argc, char **argv) {
	
	//char lineLength[CHARS_PER_LINE];


	fpIn = fopen(argv[1], "rb");
	fpOut = fopen(argv[2], "wb");

	unsigned char current = 0; 
	unsigned char comma = ',';
	int count = 0;

	while(fread(&current, sizeof(current), 1, fpIn)) {
		count++;
		if(count <= CHARS_PER_LINE) {
			printf("%c", current);
			fwrite(&current, sizeof(current), 1, fpOut);
		}
		if(current == '\n') {
			printf("\n");
			fwrite(&comma, sizeof(current), 1, fpOut);
			fwrite(&current, sizeof(current), 1, fpOut);
			count = 0;
		}
	}

	fclose(fpIn);
	fclose(fpOut);

	return 0;
}
