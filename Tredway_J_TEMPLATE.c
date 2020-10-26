#include <stdio.h>
#include <stdlib.h>   // to use exit()
#include <stdbool.h>

/* ************************************
 * author:       Jaeren Tredway
 * project:      #_: Project Name
 * Description:
 *  Input:
 *      1.  
 *      2.  
 *  Functions: 
 *      1.  
 *      2.  
 *      3.  
 *      4.  
 *  Output:
 *      1.  
 *      2.  
 *  To compile, run, and test:
 *      1.  gcc Tredway_J_ProjectName.c
 *      2.  ./a.out args < inputFileName
 *      3.  visually inspect output 
 ************************************ */


//VARIABLES:


//FUNCTIONS:
/* 
 * function 1:
 * Description: ...
 * Parameters:  ...
 * Return:      nothing (void)
 */
void readInput (char someParameter) {
    //function code here
}

/* 
 * function 2:
 * Description: ...
 * Parameters:  ...
 * Return:      nothing (void)
 */
void readInput (char someParameter) {
    //function code here
}

/* 
 * function 3:
 * Description: ...
 * Parameters:  ...
 * Return:      nothing (void)
 */
void readInput (char someParameter) {
    //function code here
}

/* ************************************
 * Description: The main function:
 *              1. validates and gets the input
 *              2. does...
 *              3. outputs...
 * Parameters:  int argc: the number of command line args
 *              char *argv[]: the string array of command line args 
 * Return: int: return 0 for no problems
 *              return 1 for for absence of command line args
 *              return 2 for ...
************************************ */
int main(int argc, char *argv[]) {

    // validate user's run command or show usage instructions:
    if (argc < 1) {
        printf("Required: the executable file (a.out), then the functions that you are calling, followed by the input file name. For example:\n");
        printf("./a.out argsGoHere < inputFileName\n")
        return 1; 
    }

    // read input and build the 2D array:
    while (c != EOF) {
        // getchar() etc...
    }

    // loop through command line args and call each function:
    // exit() with code 2 for any faulty command

    // output resulting image:

}//END main()

