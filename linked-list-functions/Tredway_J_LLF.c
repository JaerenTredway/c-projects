#include <stdio.h>
#include <stdlib.h>   // to use exit()
#include <string.h>

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
 *      3.  *delete()       delete an element from the given position
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
 *      3.  visually inspect output to test
 ************************************ */


//STRUCT DEFINITIONS -- these will be used to start an empty list:
typedef struct node {   // represents one node in a Linked List
  void         *data;   // pointer to data associated with this node
  struct node  *next;   // pointer to next node in List
  struct node  *prev;   // pointer to previous node in List
} Node;

typedef struct {   // represents a Linked List
  Node  *header;   // pointer to the "dummy header node" of
                   // the Linked List
  int   size;      // number of nodes in the Linked List
} LinkedList;


//VARIABLES:
#define MAX_NAME_LENGTH 20


//FUNCTION PROTOTYPES:
void createList (LinkedList *someList);
void addEnd(LinkedList *someList, void *newElement);
void *delete(LinkedList *someList, int position);
void outputList(LinkedList *someList);
void addFirst(LinkedList *someList, void *newElement);
void *removeLast(LinkedList *someList);
void clear(LinkedList *someList);
void *set(LinkedList *someList, int position, void *newElement);


/* ************************************
 * MAIN FUNCTION:
 * Description: 1. INPUT:   read one line of input from stdin then proceed
 *              2. PROCESS: process that line using the corresponding argv[i]
 *              3. OUTPUT:  at EOF print out the resulting linked list
 * Parameters:  int argc: the number of command line args
 *              char *argv[]: the string array of command line args 
 * Return: int: return 0 for no problems
 *              return 1 for absence of commands 
 *              return 2 if linkedList position is illegal
************************************ */
int main(int argc, char *argv[]) {
    
    // create the linked list:
    LinkedList   myList;    
    LinkedList  *roster = &myList;
    createList (roster);  // initialize the fields of the list

    // validate user's run command or show usage instructions:
    if (argc < 2) {
        printf("Required: the executable file (a.out), then the functions that you are calling, followed by the redirected input file name. For example:\n");
        printf("./a.out argsGoHere < inputFileName\n")
        return 1; 
    }

    // read one line of input at a time, then process it with it's corresponding argv[i]:
    while (c != EOF) {
        // getchar() etc...
    }

    // output the resulting linked list:
    // ...

}//END main()


//FUNCTION DEFINITIONS:
/* 
 * function 1:
 * Description:     allocates memory for the 'dummy header node' in a list 
 *                  that you have already created in main()
 * Parameters:      the linked list you are allocating memory for
 * Return:          nothing (void)
 */
void createList (LinkedList *someList) {
    //function code here
}


/* 
 * function 2:
 * Description: adds a new data element to the end of the list
 * Parameters:  1. a linked list
 *              2. the element you are adding
 * Return:      nothing (void)
 */
void addEnd (LinkedList *someList, void *newElement) {
    //function code here
}


/* 
 * function 3:
 * Description: delete an element from the given position
 * Parameters:  1. the linked list
 *              2. the position you are deleting
 * Return:      nothing (void)
 */
void *delete (LinkedList *someList, int position) {
    //function code here
}


/* 
 * function 4:
 * Description: output the contents of the list as strings
 * Parameters:  1. the linked list
 * Return:      nothing (void)
 */
void outputList(LinkedList *someList) {
    //function code here
}//END function definitions


/* 
 * function 5:
 * Description: add an element to index 0
 * Parameters:  1. the linked list
 *              2. the element you are adding
 * Return:      nothing (void)
 */
void addFirst(LinkedList *someList, void *newElement) {
    //function code here
}


/* 
 * function 6:
 * Description: delete the last element in the list
 * Parameters:  1. the linked list
 * Return:      nothing (void)
 */
void *removeLast(LinkedList *someList) {
    //function code here
}


/* 
 * function 7:
 * Description: empty all contents from list
 * Parameters:  1. the linked list
 * Return:      nothing (void)
 */
void clear(LinkedList *someList) {
    //function code here
}


/* 
 * function 8:
 * Description: replace an element in the list
 * Parameters:  1. the linked list
 *              2. the position that is being replaced
 *              3. the new element
 * Return:      nothing (void)
 */
void *set(LinkedList *someList, int position, void *newElement) {
    //function code here
}
//**** END function definitions ****
