#include <stdio.h>

#define ROWS 3
#define COLS 4

void outputTable ( char table[][COLS] );
void outputAddr ( char table[][COLS] );

int main() {
                     // static initialization of the array
  char letters[ROWS][COLS] = { {  'A', 'B', 'C', 'D' },
                               {  'E', 'F', 'G', 'H' },
                               {  'I', 'K', 'L', 'M' }  };

  printf ( "\nthe size of 2D array is %d\n\n",
            sizeof letters );

  outputTable( letters );

  // outputAddr( letters );
}



// the function needs to know the number of columns
void outputTable ( char table[][COLS] )  
{
  for ( int row = 0; row < ROWS; row++ )
  {
    for ( int col = 0; col < COLS; col++ )

      printf ( "%c\t", table[row][col] );

    printf ( "\n" );
  }
  printf ( "\n" );
}


void outputAddr ( char table[][COLS] )  
{
  for ( int row = 0; row < ROWS; row++ )
  {
    for ( int col = 0; col < COLS; col++ )

      printf ( "%p\t", &table[row][col] );

    printf ( "\n" );
  }
  printf ( "\n" );
}

