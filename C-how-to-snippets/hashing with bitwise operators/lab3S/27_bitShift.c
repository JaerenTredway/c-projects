#include "stdio.h"

int main() {
  
  printf( "bitwise Left Shift operator <<\n\t"
          "0xC0000097 << 3 is 0x%08X\n",
           0xC0000097 << 3 );

  printf( "bitwise Right Shift operator >>\n\t"
          "0xC0000097 >> 3 is 0x%08X\n",
           0xC0000097 >> 3 );

  return 0;
}
