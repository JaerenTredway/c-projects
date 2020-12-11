#include <stdio.h>
#include <string.h>

int main() {

  // Direct versus indirect memory allocation

  struct name {
     char  first[5];
     char  last[6];
     char  initial;
  };

  struct name sen;              // Senator
  strcpy ( sen.first, "ben" );
  strcpy ( sen.last, "lujan" );
  sen.initial = 'R';

  printf ( "The size of Senator struct is %lu\n", sizeof sen );
  printf ( "The first letter of the last name is %c\n", sen.last[0] );
  printf ( "The first letter of the last name is %c\n", *sen.last );
  // ERROR printf ( "The first letter of the last name is %c\n", sen->last );


  struct nombre {
     char  *first;   // OK to use same field names
     char  *last;    // in a different structure
  };

  struct nombre gov;           // Governor
  gov.first = "susana";
  gov.last = "martinez";

  printf ( "\nThe size of a pointer is: %ld\n", sizeof gov.first );
  
  printf ( "The size of Govenor struct is %lu\n", sizeof gov );
  printf ( "The first letter of the last name is %c\n", gov.last[0] );
  printf ( "The first letter of the last name is %c\n", *gov.last );
  // ERROR printf ( "The first letter of the last name is %c\n", gov->last );
}
