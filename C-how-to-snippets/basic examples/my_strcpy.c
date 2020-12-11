#include <stdio.h>
#include <string.h>

void strcpy_1 ( char s[], char t[]  );   // function proto-type
void strcpy_1_prime ( char *s, char *t  );
void strcpy_2 ( char *s, char *t  );
void strcpy_3 ( char *s, char *t  );
void strcpy_4 ( char *s, char *t  );

int main() {
  printf("\n");

  char s[] = "hello world";   // size of array is implicit
  char *t = "good-bye";
  char *empty = "";           

  char source[ strlen(s) ];
  char target[ strlen(t) ];

  strcpy ( source, s );
  strcpy ( target, t );
  printf ("BEFORE:\t source = %s \tand target = %s\n", source, target );
  printf ( "now we copy source from target\n" );
  strcpy ( source, target );
  printf ("AFTER:\t source = %s\tand target = %s\n\n", source, target );

  strcpy ( source, s );  // reset the two strings
  strcpy ( target, t );
  printf ("BEFORE:\t source = %s \tand target = %s\n", source, target );
  printf ( "now we copy source from target\n" );
  strcpy_1 ( source, target );
  printf ("AFTER:\t source = %s\tand target = %s\n\n", source, target );

  strcpy ( source, s );  // reset the two strings
  strcpy ( target, t );
  printf ("BEFORE:\t source = %s \tand target = %s\n", source, target );
  printf ( "now we copy source from target\n" );
  strcpy_2 ( source, target );
  printf ("AFTER:\t source = %s\tand target = %s\n\n", source, target );

  strcpy ( source, s );  // reset the two strings
  strcpy ( target, t );
  printf ("BEFORE:\t source = %s \tand target = %s\n", source, target );
  printf ( "now we copy source from target\n" );
  strcpy_3 ( source, target );
  printf ("AFTER:\t source = %s\tand target = %s\n\n", source, target );

  strcpy ( source, s );  // reset the two strings
  strcpy ( target, empty );
  printf ("BEFORE:\t source = %s \tand target = %s\n", source, target );
  printf ( "now we copy source from target\n" );
  strcpy_3 ( source, target );
  printf ("AFTER:\t source = %s\tand target = %s\n\n", source, target );

  strcpy ( source, empty );  // reset the two strings
  strcpy ( target, t );
  printf ("BEFORE:\t source = %s \tand target = %s\n", source, target );
  printf ( "now we copy source from target\n" );
  strcpy_3 ( source, target );
  printf ("AFTER:\t source = %s\tand target = %s\n\n", source, target );

  strcpy ( source, s );  // reset the two strings
  strcpy ( target, t );
  printf ("BEFORE:\t source = %s \tand target = %s\n", source, target );
  printf ( "now we use faulty code to copy source from target\n" );
  strcpy_4 ( source, target );
  printf ("AFTER:\t source = %s\tand target = %s\n\n", source, target );

  return 0;
}



void strcpy_1 ( char *to, char *from )  // parameter is call-by-value
{
   int pos = 0;

   to[pos] = from[pos];

   while ( to[pos] != '\0' ) {

      pos++;   // advance to next char in the strings

      to[pos] = from[pos];
   }
}



void strcpy_1_prime ( char *to, char *from )  // parameter is call-by-value
{
   int pos = 0;

   while ( ( to[pos] = from[pos] ) != '\0' )  // parens are needed

      pos++;   // advance to next char in the strings
}





void strcpy_2 ( char *to, char *from ) 
{
   while (  *to = *from  )  
   {
      from++;      // ++from is equivalent
      to++;    
   }
}



void strcpy_3 ( char *to, char *from )  
{
   while (  *to++ = *from++  )  

      ;    // empty loop body
}



// this version is faulty
void strcpy_4 ( char *to, char *from )  
{

   while (  *++to = *++from  )   

      ;    // empty loop body
}

