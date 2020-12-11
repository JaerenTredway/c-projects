#include <stdio.h>
#include <string.h>

struct date {  
    int day;      
    int month;
    int year;     
};

struct name {
    char  *first; 
    char  *last;  
    char  initial;
};

struct streetAddr {
    char  *streetName;
    int   number;
};

struct address {
    struct streetAddr  street;
    char              *town;
    char              *state;
};

// ********************************************
// multiply nested structures
// ********************************************
struct person {
    struct name    legalName;
    struct name    penName;
    struct date    birthday;
    char           gender;
    int            age;
    struct address home;
};

void outputPerson ( struct person );   // function proto-type

int main() {

  struct person mt;

  mt.legalName.first = "Samuel";    // repeated dot notation
  mt.legalName.last = "Clemens";
  mt.legalName.initial = 'L';

  mt.penName.first = "Mark";
  mt.penName.last = "Twain";

  mt.birthday.day = 30;
  mt.birthday.month = 11;
  mt.birthday.year = 1835;

  mt.gender = 'M';

  mt.home.street.streetName = "Farmington";
  mt.home.street.number = 351;
  mt.home.town = "Redding";
  mt.home.state = "CT";

  outputPerson ( mt );

  // initialization at declaration of the variable
  struct person mom =  { { "Jane", "Clemens", 'L' },
                         { "", "", ' ' },
                         { 12, 14, 1798 },
                         'F', 72,
                         {  
                            { "Farmington", 351 },
                            "Redding",
                            "CT"
                         }
                       };

  outputPerson ( mom );
}

void outputPerson ( struct person fellow )
{
  printf ("The person is:\n");
  printf ("\t%s %c. %s (%s %s)\n", 
          fellow.legalName.first, fellow.legalName.initial,
          fellow.legalName.last,
          fellow.penName.first, fellow.penName.last );
  printf ("\tborn on %d-%d-%d\n", fellow.birthday.day,
          fellow.birthday.month, fellow.birthday.year );
  printf ("\tlives at %d on %s", fellow.home.street.number,
          fellow.home.street.streetName );
  printf ("in %s in %s\n\n", fellow.home.town,
          fellow.home.state );
}

