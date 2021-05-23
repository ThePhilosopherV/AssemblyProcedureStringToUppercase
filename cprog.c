#include <stdio.h>

extern char* toupper(char* str);

int main() {
	char st[500];
	
	printf("Enter a string: ");
	fgets(st,500 , stdin);
	printf("%s",toupper(st) );

}