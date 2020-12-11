#include <stdio.h>
#include <string.h>       // library containing string functions

int strlen_1 ( char [] );   // function proto-type
int strlen_2 ( char [] );   
int strlen_3 ( char [] );   // different versions of function  
int strlen_4 ( char [] ); 

int main() {
  printf("\n");

  char s[] = "hello world";   // size of array is implicit
  char *t = "good-bye";       // char * equiv. to char []
  char *empty = "";           // empty string is legal

  printf ("The length of \"%s\" is %d\n", s, (int) strlen(s) );
  printf ("The length of \"%s\" is %d\n", t, (int) strlen(t) );
  printf ("The length of \"%s\" is %d\n\n", empty, (int) strlen(empty) );

  printf ("The length of \"%s\" is %d\n", s, strlen_1(s) );
  printf ("The length of \"%s\" is %d\n", t, strlen_1(t) );
  printf ("The length of \"%s\" is %d\n\n", empty, strlen_1(empty) );

  printf ("The length of \"%s\" is %d\n", s, strlen_2(s) );
  printf ("The length of \"%s\" is %d\n", t, strlen_2(t) );
  printf ("The length of \"%s\" is %d\n\n", empty, strlen_2(empty) );

  printf ("The length of \"%s\" is %d\n", s, strlen_3(s) );
  printf ("The length of \"%s\" is %d\n", t, strlen_3(t) );
  printf ("The length of \"%s\" is %d\n\n", empty, strlen_3(empty) );

  printf ("The length of \"%s\" is %d\n", s, strlen_4(s) );
  printf ("The length of \"%s\" is %d\n", t, strlen_4(t) );
  printf ("The length of \"%s\" is %d\n\n", empty, strlen_4(empty) );
}


int strlen_1 ( char str[] )   // parameter is call-by-value
{
   int pos = 0;

   while ( str[pos] != '\0' )
      pos++;

   return( pos ); 
}



int strlen_2 ( char str[] )   
{
   int pos = 0;

   while ( str[pos] )  // '\0' has value 00000000 (ie "false")
      pos++;

   return( pos ); 
}



int strlen_3 ( char *str )    // char *  equiv  to char []
{
   int pos = 0;

   while ( *str )  // * is the de-referencing opeartor
   {
      str++;       // advance the pointer one-step down array
      pos++;       // count the number of steps taken
   }

   return( pos ); 
}



int strlen_4 ( char *str )    
{
   char *start = str;

   while ( *str )  // * is the de-reference opeartors
  
      str++;       // advance the pointer one-step down array
   
   return( str - start );  // calc the distance from start to end
                           // of the string
}



