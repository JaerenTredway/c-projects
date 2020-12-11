#include "stdio.h"
#include "stdbool.h"

int main() {

  printf( "\nWhat should you do today?\n" );

  printf( "\nWhat is the temperature?  " );
  int temp;
  scanf( "%d", &temp );

  printf( "\nIs it percipitating?  " );
  int percipFlag;
  bool isPercip;
  scanf( "%d", &percipFlag );
  isPercip = percipFlag;

  printf( "\nIs it windy?  " );
  int windFlag;
  bool isWindy;
  scanf( "%d", &windFlag );
  isWindy = windFlag;

  printf( "\nThe temperature is %d and is percipitating is %d\n",
           temp, isPercip );
  printf( "\tand is windy is %d\n\n", isWindy );

  if ( ! isPercip ) {

     if ( temp > 70 )           
        printf( "You should swim at the lake\n" );

     else
        if ( temp > 30 )
           if ( isWindy )      
              printf( "You should play soccer\n" );
           /*  else     REMOVE THIS CASE FROM THE CODE
              printf( "You should play frisbee\n" );  */

        else
           if ( temp > 0 )
              printf( "You should ski\n" );

           else
              printf( "You should snowshoe\n" );
  }
  else {
     printf( "You should play squash inside\n" );
  }
  printf("\n");
}

