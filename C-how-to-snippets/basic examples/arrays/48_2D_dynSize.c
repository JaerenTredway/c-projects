#include <stdio.h>

void outputTable( int r, int c,

                  int table[][c] );

int main() {
  int numRows, numCols;
  printf( "Enter number rows and columns: " );
  scanf( "%d%d", &numRows, &numCols );

  // size of the array is dynamic
  int myData[numRows][numCols];

  outputTable( numRows, numCols, myData );
}

// the function needs to know the number of columns
void outputTable ( int numberRows,
                   int numberCols,
                   int table[][numberCols] )
{
  for ( int row = 0; row < numberRows; row++ )
  {
    for ( int col = 0; col < numberCols; col++ )

      printf ( "%10d\t", table[row][col] );

    printf ( "\n" );
  }
  printf ( "\n" );
}

