#include "stdio.h"

int main() {

  int count;

  printf( "This code might be used in a vending machine\n\n");

  printf( "Please enter an integer: ");
  scanf( "%d", &count );
  printf( "Your change is " );

  if ( count != 1 )
     printf( "%d dimes", count );
  else
     printf( "1 dime" );

  printf("\n\n");
}

