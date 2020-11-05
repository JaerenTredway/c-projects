#include <stdio.h>
#include <stdlib.h> // to use exit()
#include <string.h>
#include <stdbool.h>

/* ************************************
 * Author:      Jaeren Tredway
 * Date:        11-4-2020
 * Project:     #8: Linked List Functions
 * Interesting fact:    
 *              On this day in 2020, Joe Biden became the new  
 *              President of The United States. 
 * Description:
 *  Input:
 *      1.  An input file is redirected to this program at runtime.
 *      2.  One line of input is read at a time, then processed.
 *  Functions (basic outline): 
 *      1.  createList()    allocates memory for the 'dummy header node'
 *      2.  addEnd()        add a new data element to the end of the list
 *      3.  *delete()       delete an element from the given position
 *      4.  outputList()    output the contents of the list as strings
 *      5.  addFirst()      add an element to index 0
 *      6.  *removeLast()   delete the last element in the list
 *      7.  clear()         empty all contents from list
 *      8.  *set()          replace an element in the list
 *  Output:
 *      1.  print out the list in the command line when ordered
 *      2.  no extended error reports provided
 *  To compile, run, and test:
 *      1.  gcc Tredway_J_LLF.c
 *      2.  ./a.out someArgs < someInputFile > someOutputFile
 *      3.  diff myOutput outputFile1
 ************************************ */

//STRUCT DEFINITIONS -- these will be used to start an empty list:
typedef struct node
{                      // represents one node in a Linked List
    void *data;        // pointer to data associated with this node
    struct node *next; // pointer to next node in List
    struct node *prev; // pointer to previous node in List
} Node;

typedef struct
{                 // represents a Linked List
    Node *header; // pointer to the "dummy header node" of the Linked List
    int size;     // number of nodes in the Linked List
} LinkedList;

//VARIABLES:
#define MAX_NAME_LENGTH 20

//FUNCTION PROTOTYPES:
void createList(LinkedList *someList);
void addEnd(LinkedList *someList, void *newElement);
void *delete (LinkedList *someList, int position);
void outputList(LinkedList *someList);
void addFirst(LinkedList *someList, void *newElement);
void *removeLast(LinkedList *someList);
void clear(LinkedList *someList);
void *set(LinkedList *someList, int position, void *newElement);

/* ************************************
 * MAIN FUNCTION:
 * Description: 1. INPUT:   read one line of input from stdin then:
 *              2. PROCESS: process that line using the corresponding function
 *              3. OUTPUT:  for every 'o' command, print the list
 * Parameters:  int argc: the number of command line args
 *              char *argv[]: the string array of command line args 
 *              the only command line arg is the executable file name (a.out)
 * Return/exit: return  0 for no problems
 *              exit    1 if the syntax of the input file is faulty
 *              exit    2 if linkedList position is illegal
************************************ */
int main(int argc, char *argv[])
{

    // create the empty linked list:
    LinkedList myList;
    LinkedList *roster = &myList;
    createList(roster); // initialize the dummy header to start the list

    // read one line of input at a time, then process it:
    char str[30];
    char command; //the first char of input that shows the function to call
    char position[10]; //string of the number of index that gets deleted
    int len; //the length of the input str not including first char and space
    char username[MAX_NAME_LENGTH]; //the person's name from the line of input
    while (fgets(str, 30, stdin)) //runs until EOF when str will point to NULL
    {
        command = str[0];
        len = strlen(str) - 2;
        //allocate memory to hold the username:
        char *username;
        username = (char *)malloc(MAX_NAME_LENGTH * sizeof(char));
        switch (command)
        {
        case 'a': // add an element to the end with addEnd():
            memcpy(username, &str[2], len); //get a substring from [2] to the end
            username[len - 1] = '\0';       //terminate substring
            addEnd(roster, username);
            break;
        case 'd': // delete an element with *delete():
            //get the string of the number (called 'position') from the input line: (gets number up to 999)
            position[0] = str[2];
            if (str[3] != ' ')
            {
                strcat(position, &str[3]);
            }
            if (str[4] != ' ')
            {
                strcat(position, &str[4]);
            }
            //convert the string-number you got from input into an int:
            int positionInt = atoi(position);
            delete (roster, positionInt);
            break;
        case 'o':
            // print out the list with outputList():
            outputList(roster);
            break;
        case 'f':
            // add a data element (a name) to index 0 with addFirst():
            memcpy(username, &str[2], len); //get a substring from [2] to the end
            username[len - 1] = '\0';       //terminate substring
            addFirst(roster, username);
            break;
        case 'r': // delete the last index with *removeLast():
            removeLast(roster);
            break;
        case 'c':
            // empty the whole list with clear():
            break;
        case 's':
            // replace the data at one position with *set():
            break;
        default:
            exit(1); //syntax of input file is faulty
        }//END switch()
    }//END while()

    printf("*****END RESULT:\n");
    outputList(roster);

    return 0;

} //END main()

//FUNCTION DEFINITIONS:
/* 
 * function 1:
 * Description:     allocates memory for the 'dummy header node' in a list 
 *                  that you have already created in main()
 * Parameters:      the linked list you are allocating memory for
 * Return:          nothing (void)
 */
void createList(LinkedList *someList)
{
    someList->size = 0;
    someList->header = malloc(sizeof(Node));
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
void addEnd(LinkedList *someList, void *newData)
{
    //set the new Node:
    Node *newNode = malloc(sizeof(Node));
    newNode->data = newData;
    newNode->next = someList->header;
    newNode->prev = someList->header->prev;
    //re-set the header:
    someList->header->prev->next = newNode;
    someList->header->prev = newNode;
    someList->size++;
}

/* 
 * function 3:
 * Description: delete an element from the given position
 * Parameters:  1. the linked list
 *              2. the position you are deleting
 * Return:      1. "return" a pointer to the data that was deleted 
 */
void *delete (LinkedList *someList, int position)
{
    if (position < 0 || position >= someList->size)
        exit(2);

    // walk down the list until we reach the node to be removed:
    Node *temp = someList->header;
    for (int i = 0; i <= position; i++)
        temp = temp->next;
    void *removedData = temp->data;
    // splice the Nodes back together:
    temp->prev->next = temp->next; 
    temp->next->prev = temp->prev;
    someList->size--;
    free(temp); // free-up the memory of the deleted Node
    return (removedData);
}

/* 
 * function 4:
 * Description: print out the contents of the list as strings
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
void addFirst(LinkedList *someList, void *newData)
{
    //copy the pointer that points to the last Node:
    Node *lastNode = someList->header->prev;
    //set the new Node:
    Node *newNode = malloc(sizeof(Node));
    newNode->data = newData;
    newNode->next = someList->header->next;
    newNode->prev = someList->header;
    //re-set the header:
    someList->header->next = newNode;
    //someList->header->prev = newNode;
    someList->size++;
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
    printf("size before removeLast = %d\n", someList->size);
    // make sure the list isn't empty:
    if (someList->size < 1) {
        exit(2);
    }
    // make a pointer that points to the new last Node:
    Node *newLastNode = someList->header->prev->prev;
    // make pointers that point to the Node to be deleted:
    Node *removedNode = someList->header->prev;
    void *removedData = removedNode->data;
    // splice the Nodes back together:
    newLastNode->next = someList->header; 
    someList->header->prev = newLastNode;
    someList->size--;
    free(removedNode); // free-up the memory of the deleted Node
    return (removedData);
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
 *              2. the position that is being replaced
 *              3. the new element
 * Return:      1. "return" a pointer to the data that was replaced
 *              2. if the position is illegal, exit the program with status 2
 */
void *set(LinkedList *someList, int position, void *newElement)
{
    //TODO: function code here
    return NULL;
}

//**** END function definitions ****
