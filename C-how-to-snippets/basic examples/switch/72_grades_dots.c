#include "stdio.h"

int main() {

  char grade;

  printf( "Please enter the grade: " );
  scanf( "%c", &grade );

  switch ( grade ) {
     case 'A' ... 'C' :  
     case 'a' ... 'c' :  
                printf( "Excellent work!" );
                break;
     case 'D' :  
     case 'd' :  
                printf( "Please try harder" );
                break;
     case 'F' :  
     case 'f' :  
                printf( "Unsatisfactory work" );
                break;
     default :
                printf("the grade you entered is invalid" );
  }

  printf("\n\n");
}

