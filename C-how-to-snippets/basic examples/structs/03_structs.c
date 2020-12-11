#include <stdio.h>

int main() {

  struct medInfo {         // defines a template of a "data type"
     int        height;    // no memory is allocated now
     int        bp;
     long int   weight;
     short int  age;
     char       gender;     // 'M' or 'F' or 'O'
     char       bloodType;  // 'A' or 'B' or 'O'
  };


  // create a variable of this data-type, allocate memory
  // initialize all the fields

  struct medInfo alice = { 63, 120, 130, 25, 'F', 'B' };

  // access individual fields using "dot notation"

  printf ( "vital stats for Alice are: \n" );
  printf ( "   height = %d,\t",   alice.height );
  printf ( "blood pr = %d,\t",    alice.bp );
  printf ( "weight = %ld,\n   ",  alice.weight );
  printf ( "age = %d,\t",         alice.age );
  printf ( "gender = %c,\t",      alice.gender );
  printf ( "blood type = %c\n",   alice.bloodType );

  struct {         // defines a template of a "data type"
     int        height;    // no memory is allocated now
     int        bp;
     long int   weight;
     short int  age;
     char       gender;     // 'M' or 'F' or 'O'
     char       bloodType;  // 'A' or 'B' or 'O'
  } charlie;
  charlie.gender = 'M';

  struct medInfo bob;   // create another variable

  //  bob = { 72, 123, 186, 53, 'M', 'O' };   /// ILLEGAL

  bob.height = 72;    bob.age = 53;         // dot notation
  bob.weight = 186;   bob.gender = 'M';
  bob.bp = 123;       bob.bloodType = 'O';


  char vowels[] = { 'A', 'E', 'I', 'O', 'U' };
  // each char takes one byte, for a total of 5 bytes for the array
  printf ( "\nThe size of the vowels array is %lu\n", sizeof vowels );

  int primes[] = { 2, 3, 5, 7, 9, 11 };
  // each int takes 4 bytes, for a total of 24 bytes for the array
  printf ( "The size of the primes array is %lu\n\n", sizeof primes );

  printf ( "The data sizes for Medical Info data are: \n" );
  printf ( "   height = %ld,",     sizeof alice.height );
  printf ( "bp = %ld, ",           sizeof alice.bp );
  printf ( "weight = %ld, ",       sizeof alice.weight );
  printf ( "age = %ld, ",          sizeof alice.age );
  printf ( "gender = %ld, ",       sizeof alice.gender );
  printf ( "blood type = %ld\n\n", sizeof alice.bloodType );

  printf ( "The memory addresses of this data are:\n" );
  printf ( "\theight = %p\n", &alice.height );
  printf ( "\tbp     = %p\n", &alice.bp );
  printf ( "\tweight = %p\n", &alice.weight );
  printf ( "\tage    = %p\n", &alice.age );
  printf ( "\tgender = %p\n", &alice.gender );
  printf ( "\tblood  = %p\n", &alice.bloodType );


  // a structure can have "holes" in it in memory

  struct medInfoRevised { 
     int        height;   
     // int        bp;
     long int   weight;
     short int  age;
     char       gender;     // 'M' or 'F' or 'O'
     char       bloodType;  // 'A' or 'B' or 'O'
  };

  struct medInfoRevised chad = { 68, 165, 19, 'M', 'A' };
  printf ( "\nThe memory addresses of the REVISED struct are:\n" );
  printf ( "\theight = %p\n", &chad.height );
  printf ( "\tweight = %p\n", &chad.weight );
  printf ( "\tage    = %p\n", &chad.age );
  printf ( "\tgender = %p\n", &chad.gender );
  printf ( "\tblood  = %p\n", &chad.bloodType );
}

