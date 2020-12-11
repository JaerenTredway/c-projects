#include "stdio.h"

int main() {

  printf("\nWhat is the estate value, and how many heirs are there? ");

  int estate, numHeirs;

  scanf( "%d %d", &estate, &numHeirs );
  printf( "\nThe estate is worth: %d\n", estate );
  printf( "and there are %d heirs\n\n", numHeirs );

  // short-circuiting of a complex boolean condition 

  if ( estate / numHeirs > 1000000 && numHeirs != 0 )
    printf ( "You must pay estate tax, aka death tax" );

  else
     if ( numHeirs == 0 )
        printf("There are no heirs, estate is forfeit to the State\n" );
     else
        printf("You do not owe estate tax\n");

  printf( "\n" );
}

