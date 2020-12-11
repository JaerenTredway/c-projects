#include "stdio.h"

int main() {

  /* CHARACTER TYPE */
  
  char x = 'A';

  printf ( "x is '%c'\n\n", x );  // %c 

  char *message = "hello";

  printf ( "message is \"%s\"\n", message ); 
                  
                     // note use of %s

  return 0;
}
