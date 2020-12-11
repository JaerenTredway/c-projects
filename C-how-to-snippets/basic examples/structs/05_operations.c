#include <stdio.h>
#include <string.h>

// Global definition of the struct
struct medInfo {          // defines a template of a "data type"
    int        height;    // no memory is allocated now
    int        bp;
    long int   weight;
    short int  age;
    char       gender;     // 'M' or 'F' or 'O'
    char       bloodType;  // 'A' or 'B' or 'O'
};

// function proto-type
void outputMedInfo ( struct medInfo person );

int main() {

  // create a variable of this data-type
  // initialize all the fields

  struct medInfo alice = { 63, 120, 130, 25, 'F', 'B' };

  struct medInfo bob;   // create another variable

  bob.height = 72;    bob.age = 53;         // dot notation
  bob.weight = 186;   bob.gender = 'M';
  bob.bp = 123;       bob.bloodType = 'O';

  printf ( "The data for alice is:\n" );
  outputMedInfo ( alice );

  printf ( "The data for bob is:\n" );
  outputMedInfo ( bob );

  // ***************************************************
  // OPERATIONS on structures - copying
  // ***************************************************

  alice = bob;      // copy all the members of a structure

  printf ( "\nAfter copying bob's data to alice we have:\n" );
  printf ( "The data for alice is:\n" );
  outputMedInfo ( alice );
  printf ( "The data for bob is:\n" );
  outputMedInfo ( bob );

  // we cannot compare structure variables using ==, !=, <, > etc.
  // if ( alice == bob )   printf("same people");


  // ***************************************************
  // OPERATIONS on structures - pointers and addresses
  // ***************************************************

  struct medInfo *bobPtr = & bob;  // address of, pointer to, structure

  printf ( "\nDereference pointer to get bob's age is %d, %s",
            (*bobPtr).age, "the PARENTHESES are needed\n" );

  printf ( "Alternative dereference notation to get bob's age is %d\n",
            bobPtr->age );
 
  // ***************************************************
  // Anonymous Structures
  // ***************************************************

  struct {         // un-tagged, un-named struct 
     int day;      // anonymous struct
     int month;
     int year;     // must be used immediately to create variables
  } declIndep, gettys;

  declIndep.day = 4;  declIndep.month = 7;  declIndep.year = 1776;
  gettys.day    = 19; gettys.month    = 11; gettys.year    = 1863;

  struct time {    // different struts can use same member names
     int second;
     int minute;
     int hour;
     int day;      
     int month;
     int year;     
  };

  struct time laborDay = { 3, 9, 2018, 5, 45, 15 };

  printf("\n");
  if ( gettys.month == laborDay.month )
     printf ( "they occurred in the same month\n" );
  else
     printf ( "they occurred in different months\n" );
}

//****************************************************
void outputMedInfo ( struct medInfo patient )
{
   printf ( "height = %3d, bp = %4d, wt = %4ld, ",
             patient.height, patient.bp, patient.weight );
   printf ( "age = %3d, gender = %c, bl = %c\n",
             patient.age, patient.gender, patient.bloodType );
}

