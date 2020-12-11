#include <stdio.h>

int main() {

  struct medInfo {
     int        height;
     int        bp;
     long int   weight;
     short int  age;
     char       gender;
     char       bloodType;
  };

  struct medInfo alice = { 63, 120, 130, 25, 'F', 'A' };

  printf ( "\nthe data sizes for Alice's data are: \n" );
  printf ( "   height = %ld,", sizeof alice.height );
  printf ( "bp = %ld, ", sizeof alice.bp );
  printf ( "weight = %ld, ", sizeof alice.weight );
  printf ( "age = %ld, ", sizeof alice.age );
  printf ( "gender = %ld, ", sizeof alice.gender );
  printf ( "bloodType = %ld\n", sizeof alice.bloodType );

  printf ( "\nThe memory addresses of this data are:\n" );
  printf ( "\theight = %p\n", &alice.height );
  printf ( "\tbp     = %p\n", &alice.bp );
  printf ( "\tweight = %p\n", &alice.weight );
  printf ( "\tage    = %p\n", &alice.age );
  printf ( "\tgender = %p\n", &alice.gender );
  printf ( "\ttype   = %p\n", &alice.bloodType );

  union medRecord {          // *********************
     int        height;      // data fields SHARE memory space
     int        bp;
     long int   weight;
     short int  age;
     char       gender;
     char       bloodType;
  };

  union medRecord bob;

  printf ( "\nThe memory addresses of the fields in the union are:\n" );
  printf ( "\theight = %p\n", &bob.height );
  printf ( "\tbp     = %p\n", &bob.bp );
  printf ( "\tweight = %p\n", &bob.weight );
  printf ( "\tage    = %p\n", &bob.age );
  printf ( "\tgender = %p\n", &bob.gender );
  printf ( "\ttype   = %p\n", &bob.bloodType );
  printf ( "\n" );

  bob.weight = 122;
  printf ( "After setting weight to %ld\n", bob.weight );
  printf ( "Bob's weight is %ld", bob.weight );
  printf ( ", which is hex %X\n", (unsigned int) bob.weight );
  printf ( "Bob's gender is %c", bob.gender );
  printf ( ", which is hex %X\n\n", bob.gender );

  bob.gender = 'M';
  printf ( "After setting gender to %c\n", bob.gender );
  printf ( "Bob's weight is %ld", bob.weight );
  printf ( ", which is hex %X\n", (unsigned int) bob.weight );
  printf ( "Bob's gender is %c", bob.gender );
  printf ( ", which is hex %X\n\n", bob.gender );
}
