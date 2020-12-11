#include "stdio.h"
#include "stdbool.h"

int main() {

  printf( "\nWhat should you do today?\n" );

  printf( "\nIs it perciptating?  " );
  int percipFlag;
  bool isPercip;
  scanf( "%d", &percipFlag );
  isPercip = percipFlag;

  printf( "\nis percipitating is %d\n\n", isPercip );

  if ( isPercip = false ) {

     printf( "You should play frisbee\n" );
  }
  else {
     printf( "You should play squash inside\n" );
  }
  
  printf("\n");
}

