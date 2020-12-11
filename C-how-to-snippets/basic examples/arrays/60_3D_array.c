#include <stdio.h>

#define ROWS   3
#define COLS   4
#define PLANES 2

void outputTable ( char table[][ROWS][COLS] );

int main() {
                     // static initialization of the array
  char letters[PLANES][ROWS][COLS] 
          = { { {  'A', 'B', 'C', 'D' },
                {  'E', 'F', 'G', 'H' },
                {  'I', 'K', 'L', 'M' }   },

              { {  'a', 'b', 'c', 'd' },
                {  'e', 'f', 'g', 'h' },
                {  'i', 'k', 'l', 'm' }   }
             };

  printf ( "\nthe size of 2D array is %d\n\n",
            sizeof letters );

  outputTable( letters );
}



// the function needs to know the number of columns
void outputTable ( char table[][ROWS][COLS] )  
{
  for ( int plane = 0; plane < PLANES; plane++ )
  {
  for ( int row = 0; row < ROWS; row++ )
  {
    for ( int col = 0; col < COLS; col++ )

      printf ( "%c\t", table[plane][row][col] );

    printf ( "\n" );
  }
  printf ( "\n" );
  }
  printf ( "\n" );
}

