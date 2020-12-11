#include "stdio.h"

int main() {

  char grade; 

  printf( "Please enter the grade: " );
  scanf( "%c", &grade );

  switch ( grade ) {
     case 'A' :  
     case 'a' : printf( "Excellent work!" );
                break;
     case 'B' :  
     case 'b' : printf( "Good job!" );
                break;
     case 'C' :  
     case 'c' : printf( "Satisfactory performance" );
                break;
     case 'D' :  
     case 'd' : printf( "Please try harder" );
                break;
     case 'F' :  
     case 'f' : printf( "Unsatisfactory work" );
                break;
     default  : printf("the grade you entered is invalid" );
  }
  printf("\n\n");
}
