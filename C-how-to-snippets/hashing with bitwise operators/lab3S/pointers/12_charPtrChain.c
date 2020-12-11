#include "stdio.h"

int main() {

  char    a = 'A';
  char   *b = &a;
  char  **c = &b;
  char ***d = &c;
 
  printf( "the char is %c, "
          "or %c, or %c, or %c\n",

           a, *b, **c, ***d );

  return 0;
}
  
