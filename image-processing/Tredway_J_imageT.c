#include <stdio.h>
#include <stdlib.h>   // to use exit()
#include <stdbool.h>

/* ************************************
 * author:       Jaeren Tredway
 * project:      #7: Image Processing With 2D Arrays
 * Description:
 *  Input:
 *      1.  read in the input file's first char to get the array size.
 *      2.  read each line of the input file into a 2D array.
 *  Functions: 
 *      1.  invert: change every ‘*’ into ' ', and vice versa.
 *      2.  flip: flip the image either vertically (V) or (v), or
 *          horizontally (H) or (h).
 *      3.  removeRedEye: change any '*' to ' ' if that star is isolated 
 *          and has no other star touching it (in eight directions).
 *      4.  the command line args to use these functions are:
 *              flip V, flip v, flip H, flip h
 *              inv 
 *              redeye
 *  Output:
 *      1.  output the transformed image to stdout
 *      2.  for errors, output error message and usage instructions
 *  To compile, run, and test:
 *      1.  gcc Tredway_J_imageT.c
 *      2.  ./a.out flip H inv redeye flip V < inputFileName
 *      3.  visually inspect output to confirm trensformation has succeeded
 ************************************ */


//VARIABLES:
int size; //get the array size from the first line of input


//FUNCTIONS:
//1. read input file and build 2D array:
void readInput (char pic[size][size]) {
    char c = getchar();
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            if (c != ' ' && c != '*' && c != '\n') {
                printf("Bad input file\nexit error code 1\n");
                exit(1); // aborts if anything other than ' ', '*', or '\n' found in input file
            } else if (c == ' ' || c == '*') {
                pic[i][j] = (char)c;
            } else {
                j--; 
            }
            c = getchar();
        }
    }// END input reader
}


//2. display picture:
void displayPicture (char pic[size][size]) {
    for(int i = 0; i < size; i++) {
        for(int j = 0; j < size; j++) {
            printf("%c", pic[i][j]);
            if (j == size-1){
            printf("\n");
            }
        }
    }
}

//3. invert picture (change '*' to ' ' and vice versa):
//4. flip (across horizontal or vertical axis):
//5. removeRedEye (delete any star not touching another star):

/* ************************************
 * Description: The main function:
 *              1. validates and gets the input to build a 2D arrray
 *              2. loops through the argv[] and runs each function called
 *              3. outputs the resulting image to stdout
 * Parameters:  int argc: the number of command line args
 *              char *argv[]: the string array of command line args which will
 *              be the functions you are calling
 * Return/exit: return 0 for no problems
 *              exit 1 for bad input (any chars other than ' ', '*', or '\n')
 *              exit 2 for faulty (misspelled) command line args
************************************ */
int main(int argc, char *argv[]) {

    // validate user's run command or show usage instructions:
    //FIXME: this needs to test that the run command includes the input file 
    // like this: ./a.out (list of desired functions here, if any) < image1
        // if (...) {
        //     printf("Required: the executable file (a.out), then the functions that you are calling, followed by the input file name. For example:\n");
        //     printf("./a.out flip H inv redeye flip V < ./Images/image1\n");
        //     exit(1);
        // }

    // get size of array:
    size = (int)(getchar() - 48);

    // read input file and build the 2D array:
    char picture[size][size];
    readInput(picture);

    // loop through command line args and call each function:
        // exit() with code 2 for any faulty command

    // output resulting image:
    displayPicture(picture);
    return 0;
}//END main()

