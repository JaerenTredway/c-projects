#include "stdio.h"

int main() {

  int count;

  printf( "This code might be used in a vending machine\n\n");

  printf( "Please enter an integer: ");
  scanf( "%d", &count );

  printf( "Your change is %d dime%s", count,

           (count != 1) ? "s" : ""  );

           // "" is the empty string

  printf("\n\n");
}

