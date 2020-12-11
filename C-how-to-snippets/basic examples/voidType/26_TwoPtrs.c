#include "stdio.h"

int main() { 

  char c = 'a';
  int  x = 0x41414344; 

  printf( "c is '%c'\n", c );
  printf( "x is %08X\n", x );

  char *p1 = &c;  
  int  *p2 = &x;  

  printf( "p1 points to '%c'\n", *p1 );
  printf( "p2 points to %08X\n", *p2 );

  return(0);
}
  
