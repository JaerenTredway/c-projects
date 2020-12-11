#include <stdio.h>
#include <string.h>

/*  
 * author: Jaeren Tredway
 */

int main( int argc, char *argv[] ) {

  if ( argc != 2 ) {
    printf ( "You must enter a single word on the command line\n" );
    return 1;  // Error code for operating system
  }

  char *theData = argv[1];
  unsigned int hashCode = 0;
  unsigned int leftMostFourBits = 0;
  char nextChar = theData[0];

  // loop over each char in the given input string and
  // update the value of the hash code based on this char:
  int i;
  for ( i = 0; i < strlen(theData) - 1; i++ ) {
    nextChar = theData[i];
    hashCode += nextChar;
    leftMostFourBits = hashCode >> 28;
    leftMostFourBits = leftMostFourBits << 18;
    hashCode = hashCode << 4;
    hashCode = hashCode ^ leftMostFourBits;
  }

  // add the final character value, without doing the shift+XOR:
  hashCode += theData[strlen(theData)-1]; 
  // make the hash key that could be used to insert the string hash into a hash table:
  int key = hashCode % 11;

  printf ( "The hash of %s = %u\n", argv[1], hashCode);
  printf ( "The key of %s = %u\n", argv[1], key);

  return 0;   // success code returned to Operating System
}
