#include "stdio.h"

int main() {

  int numerator;
  int denominator;

  printf( "Please enter the numerator and denominator: " );

  scanf( "%d %d", &numerator, &denominator );

  if ( denominator == 0 )
     printf("Dividing by zero will crash the program %d\n",
             numerator / denominator );
  else
     printf("The value of %d / %d is: %d \n", numerator, denominator,
             numerator / denominator );

  printf( "\n" );
}
