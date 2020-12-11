#include "stdio.h"

int main() {

  printf( "\nThis is a simple calculator\n\n" );

  int x, y;        // the operands
  char operator;   // the operator. must be +, -, * or /

  printf( "Enter the first number:\t\t" );
  scanf( "%d", &x );
  printf( "Enter the arithmetic operator:\t" );
  scanf( "%*c%c", &operator );
  printf( "Enter the second number:\t" );
  scanf( "%d", &y );

  printf( "You entered: %d %c %d\n", x, operator, y );
  printf( "\t\t\t%d %c %d is ", x, operator, y );

  switch ( operator ) {
     case '+' :  
                printf( "%d", x + y );
                break;
     case '-' :  
                printf( "%d", x - y );
                break;
     case '*' :  
                printf( "%d", x * y );
                break;
     case '/' :  
                printf( "%d", x / y );
                break;
     default :
                printf("??? \nthe operator you entered "
                   "(%c) is invalid\n", operator );
  }
  printf("\n\n");
}
