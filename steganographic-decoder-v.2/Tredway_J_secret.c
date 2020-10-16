#include <stdio.h>
#include <math.h>   // to use pow()
#include <stdbool.h>

/* ************************************
 * author:       Jaeren Tredway
 * project:      #6: Secret: Steganography Lab
 * Description:
 *  Input and process:
 *      1.  read in a stream of input character-by-character 
 *      2.  for each period/dot, count the number of spaces that  
 *          immediately follow the dot 
 *      3.  if zero spaces: ignore that dot
 *      4.  if 1 space: account for a single 0-bit in the secret message
 *      5.  if 2 spaces: account for a single 1-bit in the secret message
 *      6.  if 3+ spaces: end of secret message
 *  Output:
 *      1.  outputs to stdout the plain text secret message, with exit code 0
 *      2.  if the number of bits in the secret message is not a multiple
 *          of 8 (8 bits for each ASCII character), then the program will
 *          return an exit status of 1
 *      3.  if the input file does not contain the “message over” signal, 
 *          i.e., a dot followed by 3 or more spaces, then the program will
 *          return an exit status of 2
 *  To compile, run, and test:
 *      1.  gcc Tredway_J_secret.c
 *      2.  ./a.out < goodInputFile_1
 *      3.  visually inspect output for a comprehensible secret message
 ************************************ */

//variables:
char c; // each input char is rewritten onto this variable, one at a time
short spaceCounter; // count up each pack of white spaces
short bitCounter; // keep track of groups of 8 bits (bytes)
short asciiCode; // temporarily store the ascii code of each char in the secret
int i; //reusable index
char secret[1000]; // store the secret message
int numBits; // count the overall number of bits extracted from the original message
bool correctlyTerminated; // make sure there is a 3-space termination in the original message


/* ************************************
 * Description: This function gets the input one char at a time, looks for
 *              dots, then counts spaces, adds a 0 or 1 bit value to asciiCode,
 *              and builds a secret message from the asciiCodes
 * Parameters:  int argc: the number of command line args
 *              char *argv[]: the string array of command line args
 * Return: int: return 0 for no problems,
 *              return 1, 2 or 3 for failures (see 'ouput' description above)
************************************ */
int main(int argc, char *argv[]) {
    // make sure there is one command line arg (a.out) and the input file
    // from this command: ./a.out < someInputFile
    if (argc != 1) {
        printf("Required: one cmd line arg (a.out) and then the input file name, like this: ./a.out < someInputFile\n");
        return 3; //error code 1 is used for a "%8 != 0" result, so I'm using 3 for this arg error
    }

    // read through the input and process any (dot + spaces) into bits:
    i = 0;
    numBits = 0;
    spaceCounter = 0;
    bitCounter = 7;
    asciiCode = 0;
    correctlyTerminated = false;
    while (c != EOF) {
        c = getchar();
        //look for dots then count subsequent spaces:
        if (c == '.') {
            c = getchar();
            while (c == ' ') {
                spaceCounter++;
                c = getchar();
            }
        }
        //covert each package of spaces into a bit value and add it to the asciiCode, until you account for 8 bits:
        if ((spaceCounter > 0) && (bitCounter > -1)) {
            if (spaceCounter == 1) { // account for 0-bit
                bitCounter--;
                numBits++;
                spaceCounter = 0;
            } else if (spaceCounter == 2) { // account for 1-bit
                asciiCode += pow(2, bitCounter);
                bitCounter--;
                numBits++;
                spaceCounter = 0;
            } else if (spaceCounter >= 3) { //terminate secret message
                c = EOF;
                correctlyTerminated = true;
                break;
            }
        }
        // convert asciiCode to a char and put it in the secret message string:
        if (bitCounter == -1) {
            secret[i] = (char)asciiCode;
            i++;
            //reset variables:
            bitCounter = 7;
            asciiCode = 0;
        }  
    }//END while() loop that reads input file 


    //error messages:
    if (!correctlyTerminated) {
        printf("ABORT MISSION: message was faulty with no 3-space termination");
        return 2;
    }
    if (numBits % 8 != 0) {
        printf("ABORT MISSION: message was not zeroed at modulo 8");
        return 1;
    }

    printf("%s\n", secret);
    
return 0;

}//END main()
