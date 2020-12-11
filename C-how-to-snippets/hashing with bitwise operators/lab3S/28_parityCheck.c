#include "stdio.h"

int main() {

  int x = 0x35; // 0011 0101
  int numOnes = 0;
  int mask = 1;

  int i;
  for ( i=0; i < 8; i++ ) {
    numOnes = numOnes + (x & 1);
    x = x >> 1;
  }

  printf ( "x has %d one bits\n", numOnes );
  if ( numOnes % 2 == 0 )
    printf ( "This value has Even parity\n" );
  else
    printf ( "This value has Odd parity\n" );

  return 0;
}
