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

  if ( ! isPercip   &&   temp > 70 )
     printf( "You should swim at the lake\n" );

  if ( ! isPercip  &&  (temp <= 70 && temp > 30) && isWindy )
     printf( "You should play soccer\n" );

  if ( ! isPercip  &&  (temp <= 70 && temp > 30) && ! isWindy )
     printf( "You should play frisbee\n" );

  if ( ! isPercip  &&  (temp <= 30 && temp > 0) )
     printf( "You should ski\n" );

  if ( ! isPercip  &&  temp <= 0 )
     printf( "You should snowshoe\n" );

  if ( isPercip )
     printf( "You should play squash inside\n" );

  printf("\n");
}
