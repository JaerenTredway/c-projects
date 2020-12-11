#include "stdio.h"

int main() {

  char x = 'A';

  printf ( "x is '%c'\n\n", x );   

  char *message;

  message = "A";
  printf ( "message is \"%s\"\n", message ); 

  message = "four score and seven years ago";
  printf ( "message is \"%s\"\n", message ); 

  message = "";   // empty string, length = 0
  printf ( "message is \"%s\"\n", message ); 

  return 0;
}
