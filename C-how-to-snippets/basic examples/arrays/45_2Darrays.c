#include <stdio.h>

#define ROWS 3
#define COLS 4

void outputTable ( char table[][COLS] );
void outputRow ( char table[] );

int main() {
                     // static initialization of the array
  char letters[ROWS][COLS] = { {  'A', 'B', 'C', 'D' },
                               {  'E', 'F', 'G', 'H' },
                               {  'I', 'K', 'L', 'M' }  };

  outputTable( letters );

  int rowNum;
  printf ("\nwhat row do you wish to print?  ");
  scanf ( "%d", &rowNum );

  outputRow( letters[rowNum] );
}

void outputTable ( char table[][COLS] )  // Num. of columns needed
{
  for ( int row = 0; row < ROWS; row++ )
  {
    for ( int col = 0; col < COLS; col++ )

      printf ( "%c\t", table[row][col] );

    printf ( "\n" );
  }
  printf ( "\n" );
}


// the parameter to the function is a 1-dimensional array
void outputRow ( char table[] )  
{
  for ( int i = 0; i < COLS; i++ )
  {
    printf ( "%c\t", table[i] );
  }
  printf ( "\n" );
}

