#include <stdio.h>
#include <stdlib.h>   // to use exit()
#include <string.h>
#include <stdbool.h>

/* ************************************
 * Author:      Jaeren Tredway
 * Date:        11-3-2020
 * Project:     #8: Linked List Functions
 * Interesting fact:    
 *              On this day in 2020, Joseph Biden was elected 
 *              President of The United States.
 * Description:
 *  Input:
 *      1.  An input file is redirected to this program at runtime.
 *      2.  One line of input is read at a time, then processed.
 *  Functions (basic outline): 
 *      1.  createList()    allocates memory for the 'dummy header node'
 *      2.  addEnd()        add a new data element to the end of the list
 *      3.  *delete()       delete an element from the given positionString
 *      4.  outputList()    output the contents of the list as strings
 *      5.  addFirst()      add an element to index 0
 *      6.  *removeLast()   delete the last element in the list
 *      7.  clear()         empty all contents from list
 *      8.  *set()          replace an element in the list
 *  Output:
 *      1.  print out the list in the command line
 *      2.  no detailed error reports provided
 *  To compile, run, and test:
 *      1.  gcc Tredway_J_LLF.c
 *      2.  ./a.out someArgs < someInputFile > someOutputFile
 *      3.  diff myOutput outputFile1
 ************************************ */


//STRUCT DEFINITIONS -- these will be used to start an empty list:
typedef struct node {   // represents one node in a Linked List
  void         *data;   // pointer to data associated with this node
  struct node  *next;   // pointer to next node in List
  struct node  *prev;   // pointer to previous node in List
} Node;

typedef struct {   // represents a Linked List
  Node  *header;   // pointer to the "dummy header node" of the Linked List
  int   size;      // number of nodes in the Linked List
} LinkedList;


//VARIABLES:
#define MAX_NAME_LENGTH 20


//FUNCTION PROTOTYPES:
void createList (LinkedList *someList);
void addEnd(LinkedList *someList, void *newElement);
void *delete(LinkedList *someList, int positionString);
void outputList(LinkedList *someList);
void addFirst(LinkedList *someList, void *newElement);
void *removeLast(LinkedList *someList);
void clear(LinkedList *someList);
void *set(LinkedList *someList, int positionString, void *newElement);


/* ************************************
 * MAIN FUNCTION:
 * Description: 1. INPUT:   read one line of input from stdin then proceed
 *              2. PROCESS: process that line using the corresponding function
 *              3. OUTPUT:  for every 'o' command, print the list
 * Parameters:  int argc: the number of command line args
 *              char *argv[]: the string array of command line args 
 *              the only command line arg is the executable file name (a.out)
 * Return/exit: return  0 for no problems
 *              exit    1 if the syntax of the input file is faulty
 *              exit    2 if linkedList positionString is illegal
************************************ */
int main(int argc, char *argv[]) {
    
    // create the empty linked list:
    LinkedList   myList;    
    LinkedList  *roster = &myList;
    createList (roster);  // initialize the dummy header to start the list


    // read one line of input at a time, then process it:
    char str[25];
    char command; //the first char of input that shows the function to call
    char positionString[10]; //the positionString in the list to delete or overwrite
    int len; //the length of the input str not including first char and space
    char username[MAX_NAME_LENGTH]; //the person's name from the line of input
    while (fgets(str, 25, stdin) != NULL) {
        printf("%s", str); //TEST***********
        command = str[0]; 
        len = strlen(str)-2;
        printf("length is %d\n", len);  
        switch (command) {
            case 'a':
                // add an element to the end with addEnd():
                memcpy(&username, &str[2], len); //get a substring from [2] to the end
                username[len-1] = '\0'; //terminate substring
                addEnd(roster, username); 
                outputList(roster);
                break;
            case 'd':
                // delete an element with *delete():
                positionString[0] = str[2];
                if (str[3] != ' ') {
                    strcat(positionString, &str[3]);
                } 
                if (str[4] != ' ') {
                    strcat(positionString, &str[4]);
                }
                printf("positionString = %s\n", positionString);
                int positionInt = atoi(positionString);
                printf("positionInt = %d\n", positionInt);
                delete(roster, positionInt);
                break;
            case 'o':
                // outputList
                break;
            case 'f':
                // addFirst
                break;
            case 'r':
                // *removeLast
                break;
            case 'c':
                // clear
                break;
            case 's':
                // *set
                break;
            default:
                exit(1); //syntax of input file is faulty
        }//END switch()
    }//END while()

    printf("*****************TEST RESULT:\n");
    outputList(roster);
    printf("size = %d\n", roster->size);
    return 0;

}//END main()


//FUNCTION DEFINITIONS:
/* 
 * function 1:
 * Description:     allocates memory for the 'dummy header node' in a list 
 *                  that you have already created in main()
 * Parameters:      the linked list you are allocating memory for
 * Return:          nothing (void)
 */
void createList (LinkedList *someList) 
{
  someList->size = 0; 
  someList->header = malloc (sizeof(Node));
  someList->header->data = NULL;
  someList->header->next = someList->header;
  someList->header->prev = someList->header;
}


/* 
 * function 2:
 * Description: adds a new data element to the end of the list
 * Parameters:  1. a linked list
 *              2. the element you are adding
 * Return:      nothing (void)
 */
void addEnd (LinkedList *someList, void *newElement) 
{
  Node *lastNode = someList->header->prev;
  Node *newNode = malloc (sizeof(Node));
  newNode->data = newElement;          // set the fields of the new Node
  newNode->next = someList->header;
  newNode->prev = someList->header->prev;
  someList->header->prev->next = newNode;  // splice-in the newNode
  someList->header->prev = newNode;        // into the List
  someList->size++;
}


/* 
 * function 3:
 * Description: delete an element from the given positionString
 * Parameters:  1. the linked list
 *              2. the positionString you are deleting
 * Return:      1. "return" a pointer to the data that was deleted 
 */
void *delete (LinkedList *someList, int positionString) 
{
  if (positionString < 0  ||  positionString >= someList->size) 
    exit(2);

  // walk down the list until we reach the node to be removed
  Node *temp = someList->header;
  for ( int i=0; i <= positionString; i++ )
     temp = temp->next;
  void *removedData = temp->data;
  temp->prev->next = temp->next;   // splice-out the Node
  temp->next->prev = temp->prev; 
  someList->size--;
  free(temp);   // free-up the memory of the deleted Node
  return (removedData);
}


/* 
 * function 4:
 * Description: output the contents of the list as strings
 * Parameters:  1. the linked list
 * Return:      nothing (void)
 */
void outputList(LinkedList *someList) 
{
  if ( someList == NULL  )
     return;
  if ( someList->size == 0 )  {
     printf ( "[]\n" );
     return;
  }
  printf ( "[" );
  Node *temp = someList->header->next; 
  for ( int num = 0; num < someList->size; num++ ) {
     printf("%s%s", (char *) temp->data,
                    (num < someList->size-1) ? " " : "" );
     temp =  temp->next;
  }
  printf ( "]\n" );
}


/* 
 * function 5:
 * Description: add an element to index 0
 * Parameters:  1. the linked list
 *              2. the element you are adding
 * Return:      nothing (void)
 */
void addFirst(LinkedList *someList, void *newElement) 
{
    //TODO: function code here
}


/* 
 * function 6:
 * Description: delete the last element in the list
 * Parameters:  1. the linked list
 * Return:      1. "return" a pointer to the data that was deleted from the list
 *              2. if the list is empty, exit the program with status 2
 */
void *removeLast(LinkedList *someList) 
{
    //TODO: function code here
    return NULL;
}


/* 
 * function 7:
 * Description: empty all contents from list
 * Parameters:  1. the linked list
 * Return:      nothing (void)
 */
void clear(LinkedList *someList) 
{
    //TODO: function code here
}


/* 
 * function 8:
 * Description: replace an element in the list
 * Parameters:  1. the linked list
 *              2. the positionString that is being replaced
 *              3. the new element
 * Return:      1. "return" a pointer to the data that was replaced
 *              2. if the positionString is illegal, exit the program with status 2
 */
void *set(LinkedList *someList, int positionString, void *newElement) 
{
    //TODO: function code here
    return NULL;
}

//**** END function definitions ****
