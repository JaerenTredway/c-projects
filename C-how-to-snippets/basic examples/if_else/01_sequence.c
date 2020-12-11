#include "stdio.h"

int main() {
               // Sequential execution of one
               // line-of-code after another
     
               // flow-of-control moves down
               // one line at a time   

  printf( "\nHello, world\n" );

  printf( "\nhow are you this fine day?\n" );
  printf( "\ton a scale from 1 to 10?  " );

  int mood;
  scanf( "%d", &mood );

  printf( "\nOK, I see that your mood is %d\n\n", mood );

  return(0);
}
