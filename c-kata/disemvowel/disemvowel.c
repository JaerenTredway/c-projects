#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*
 * This program removes vowels from ill-intentioned strings
 */

char* trollString = "Hahaha your website is totally lame!";

char* disemvowel(const char* str)
{
    char* result;
    int i = 0;
    
	//allocate memory of the string length + null char:
    result = (char*)malloc(strlen(str) + 1);
	//while str* not pointing to null char (false):
    for ( ; *str ; str++)
		//if str* not pointing to vowel:
        if (!strchr("AEIOUaeiou", *str))
			//get that non-vowel char and increment i: 
            result[i++] = *str; 
    //terminate result string with null char:
	result[i] = '\0';
	//reallocate memory to the new reduced size (vowels now gone):
	result = (char*)realloc(result, i);
	
    return (result);
}

int main(void) {
  char* guttedString = disemvowel(trollString);
  printf("%s\n", guttedString);
  return 0;
}
