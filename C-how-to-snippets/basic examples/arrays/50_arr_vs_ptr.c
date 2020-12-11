#include <stdio.h>
#include <string.h>

#define ROWS 4
#define COLS 4

void outputNames ( char table[][COLS] );
void outputTags  ( char *table[] );

int main() {

  char names[ROWS][COLS];  // store names in 2D array of chars
  strcpy ( names[0], "ed" );
  strcpy ( names[1], "ann" );
  strcpy ( names[2], "bob" );
  strcpy ( names[3], "sue" );
  printf ( "\nthe size of 2D array is %d\n\n", 
          (int) sizeof names );
  outputNames( names );

  char *tags[4];       // store names in array of pointers
  tags[0] = "ed";
  tags[1] = "ann";
  tags[2] = "bob";
  tags[3] = "sue";
  outputTags( tags );
}

void outputNames ( char table[][COLS] )
{
  for ( int r = 0; r < ROWS; r++ )
  {
    printf ("%s\n", table[r] );
  }
  printf ( "\n" );
}

void outputTags ( char *table[] )  // equiv. to char **table
{
  for ( int r = 0; r < ROWS; r++ )
  {
    printf ( "%s\n", table[r] );
  }
  printf ( "\n" );
}

