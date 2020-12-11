#include <stdio.h>
#include <string.h>

/*  PUT YOUR NAME HERE */

int main( int argc, char *argv[] ) {

  if ( argc != 2 ) {
    printf ( "You must enter a single word on the command line\n" );
    return 1;  // Error code for operating system
  }

  char *theData = argv[1];

  // This line is for debugging purposes ONLY
  // This printf should not be part of your submitted program
  printf ( "You entered the word: %s\n", theData );

  unsigned int hashCode = 0;

  // this variable is used to capture the leftmost 4 bits of the hashCode
  unsigned int leftMostFourBits = 0;
 
  /* PUT YOUR CODE BETWEEN THIS COMMENT AND THE CLOSING COMMENT BELOW  */

  // loop over each char in the given input string and
  // update the value of the hash code based on this char
  int i;
  for ( i = 0; i < strlen(theData); i++ ) {

    char nextChar = theData[i];

    // This line is for debugging purposes ONLY
    // This printf should not be part of your submitted program
    printf ( "The next char is: %c\n", nextChar );

  }

  /* CLOSING COMMENT   */

  printf ( "The hash of %s = %u\n", argv[1], hashCode );

  return 0;   // success code returned to Operating System
}
