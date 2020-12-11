#include "stdio.h"

int main() {

  int x, y;

  printf( "Please enter two integers: ");
  scanf( "%d %d", &x, &y );

  printf( "\n\nYou entered %d and %d\n\n", x, y );

  printf( "The smaller of these two values is: %d",

           ( x <= y )  ?   x  :  y   );

  printf("\n\n");
}

