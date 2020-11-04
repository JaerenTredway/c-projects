#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

typedef struct {

  char *name;
  char *major;

} Student;


typedef struct node {   // represents one node in a Linked List

  void         *data;   // pointer to data associated with this node
  struct node  *next;   // pointer to next node in List
  struct node  *prev;   // pointer to previous node in List

} Node;


typedef struct { 

  Node  *header;   // pointer to the "dummy header node" of
                   // the Linked List
  int   size;      // number of nodes in the Linked List

} LinkedList;



// function proto-types
void createList ( LinkedList *someList );
void addEnd( LinkedList *someList, void *newElement );
void *delete( LinkedList *someList, int position );
int  indexOf( LinkedList *someList, char *target );
void outputList( LinkedList *someList );


int main() {

   LinkedList   myList;    

   LinkedList  *roster = NULL;
   outputList ( roster );

   roster = &myList;
   createList ( roster );  // initialize the fields of the list
   outputList ( roster );

   Student a, b, c, d, e, f, g;

   a.name = "alice"; a.major = "ART";
   b.name = "bob";   b.major = "BIO";
   c.name = "chad";  c.major = "CHM";
   d.name = "dan";   d.major = "DNC";
   e.name = "ed";    e.major = "ENG";
   f.name = "fran";  f.major = "FRN";
   g.name = "gian";  g.major = "GEO";

   addEnd ( roster, &a );
   addEnd ( roster, &b );
   addEnd ( roster, &c );
   addEnd ( roster, &d );

   outputList ( roster );

   Student *someStudent;
   someStudent = delete ( roster, 1 );
   printf ( "\nAfter removing position 1 the list is:\n" );
   outputList ( roster );
   someStudent = delete ( roster, 0 );
   printf ( "\nAfter removing position 0 the list is:\n" );
   outputList ( roster );
   someStudent = delete ( roster, 1 );
   printf ( "\nAfter removing position 1 the list is:\n" );
   outputList ( roster );
   someStudent = delete ( roster, 0 );
   printf ( "\nAfter removing position 0 the list is:\n" );
   outputList ( roster );

   addEnd ( roster, &a );
   addEnd ( roster, &b );
   addEnd ( roster, &c );
   addEnd ( roster, &d );
   outputList ( roster );

   int pos;
   pos = indexOf ( roster, "alice" );
   printf ( "\nThe position of \"alice\" is: %d\n", pos );
   pos = indexOf ( roster, "bob" );
   printf ( "The position of \"bob\" is: %d\n", pos );
   pos = indexOf ( roster, "chad" );
   printf ( "The position of \"chad\" is: %d\n", pos );
   pos = indexOf ( roster, "dan" );
   printf ( "The position of \"dan\" is: %d\n\n", pos );
}


// Initially the List is empty
// We must create memory for the "dummy header node"
void createList ( LinkedList *someList )
{
  someList->size = 0; 

  someList->header = malloc ( sizeof (Node) );

  someList->header->data = NULL;
  someList->header->next = someList->header;
  someList->header->prev = someList->header;
}

// add the new data element to the end of the List
void addEnd( LinkedList *someList, void *newData )
{
  Node *lastNode = someList->header->prev;

  Node *newNode = malloc ( sizeof ( Node ) );

  newNode->data = newData;          // set the fields of the new Node
  newNode->next = someList->header;
  newNode->prev = someList->header->prev;

  someList->header->prev->next = newNode;  // splice-in the newNode
  someList->header->prev = newNode;        // into the List

  someList->size++;
}


// remove the item in the given positionn in the List, and
// return the data
void *delete ( LinkedList *someList, int position )
{
  if ( position < 0  ||  position >= someList->size ) {
    printf("ERROR - illegal position in the list, aborting program\n");
    exit(1);
  }

  // walk down the list until we reach the node to be removed

  Node *temp = someList->header;
  for ( int i=0; i <= position; i++ )
     temp = temp->next;

  void *removedData = temp->data;

  temp->prev->next = temp->next;   // splice-out the Node
  temp->next->prev = temp->prev; 
 
  someList->size--;

  free( temp );   // free-up the memory of the deleted Node

  return ( removedData );
}


// locate the position in the list of the Student whose name
// equals the given target.
// return -1 if not found
int indexOf( LinkedList *someList, char *target )
{
  // walk down the list until we reach the Node with the given
  // target name.  Stop the loop if we wrap-around the list

  Node *temp = someList->header->next;

  int  currPos = 0;   // current position in the list

  while ( temp != someList->header ) {

     // casting is needed since temp--> data is (void *)
     char *currFirstName = ( (Student *) temp->data )->name;

     if ( strcmp ( currFirstName, target ) == 0 )
       return currPos;       // target has been found

     temp = temp->next;

     currPos++;
  }

  return ( -1 );  // target was not found in the List
}


// output the contents of the List
void outputList( LinkedList *someList )
{
  if ( someList == NULL  )
     printf ( "The List has not been created yet\n\n" );

  else if ( someList->size == 0 ) 
     printf ( "The List is empty\n\n" );

  else {
     printf ( "The List is: " );

     Node *temp = someList->header->next;

     for ( int num = 0; num < someList->size; num++ ) {

       printf("[%s, ", 
         ( (Student *) temp->data )->name );
       printf("%s], ", 
         ( (Student *) temp->data )->major );

       temp =  temp->next;
     }
     printf ("\n\n" );
  }
}

