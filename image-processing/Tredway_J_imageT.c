#include <stdio.h>
#include <stdlib.h>     // to use exit()
#include <stdbool.h>
#include <string.h>     // to use strcmp()

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
char* usage = "One or more faulty function command args.\nValid command line args:\nflip V, flip v, flip H, flip h\ninv\nredeye\nexample: ./a.out flip V inv redeye < Images/image1";


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
            //FIXME:
            if (pic[i][j] == ' ') pic[i][j] = '_';
            c = getchar();
        }
    }
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
void invert (char pic[][size]) {
    for(int i = 0; i < size; i++) {
        for(int j = 0; j < size; j++) {
            if (pic[i][j] == '*') {
                pic[i][j] = '_';
            } else if (pic[i][j] == '_') {
                pic[i][j] = '*';
            }
        }
    }
}

//4. flip across horizontal axis: (flipH)
void flipH (char pic[][size]) {
    for(int i = 0; i < size/2; i++) {
        for(int j = 0; j < size; j++) {
            char temp = pic[i][j];
		    pic[i][j] = pic[size-i-1][j];
		    pic[size-i-1][j] = temp;
        }
    }
}

//5. flip across vertical axis:
void flipV (char pic[][size]) {
    for(int i = 0; i < size; i++) {
        for(int j = 0; j < size/2; j++) {
            char temp = pic[i][j];
		    pic[i][j] = pic[i][size-j-1];
		    pic[i][size-j-1] = temp;
        }
    }
}

//6. removeRedEye (delete any star not touching another star):

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

    // get size of array:
    size = (int)(getchar() - 48);

    // read input file and build the 2D array:
    char picture[size][size];
    readInput(picture);

    // loop through command line args and get the function commands:
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "inv") == 0) {
            invert(picture);
        } else if ((strcmp(argv[i], "flip") == 0) && (argc > (i+1))) {
            if (strcmp(argv[i+1], "V") == 0) {
                flipV(picture);
                i++;
            } else if (strcmp(argv[i+1], "v") == 0) {
                flipV(picture);
                i++;
            } else if (strcmp(argv[i+1], "H") == 0) {
                flipH(picture);
                i++;
            } else if (strcmp(argv[i+1], "h") == 0) {
                flipH(picture);
                i++;
            } else {
                printf("%s\n", usage);
                printf("\nerror code = 2\n");
                exit(2);
            }
        } else {
            printf("%s\n", usage);
            printf("\nerror code = 2\n");
            exit(2); 
        }
    }
        

    // output resulting image:
    displayPicture(picture);
    return 0;
}//END main()
