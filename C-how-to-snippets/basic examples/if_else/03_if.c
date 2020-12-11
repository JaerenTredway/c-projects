#include "stdio.h"

int main() {

  printf( "\nHello, world\n" );

  printf( "\nhow are you this fine day?\n" );
  printf( "\ton a scale from 1 to 10?  " );

  int mood;
  scanf( "%d", &mood );

  printf ( "\nSo your mood today is %d\n\n", mood );

  if ( mood > 6 ) {  // need parentheses around condition
                     // flow-of-control either enter the
                     // "if clause", or skips past it

     printf( "I am glad you are happy today\n"  );
     printf( "I hope you are happy every day\n"  );
     printf( "Good-bye!\n"  );
  }

  printf( "\n" );
}
