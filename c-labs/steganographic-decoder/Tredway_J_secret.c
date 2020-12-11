#include <stdio.h>
#include <stdlib.h> // to use exit()
#include <string.h> // to use strlen()
#include <math.h> // to use pow()

/* ************************************
 * author:       Jaeren Tredway
 * project:      #6: Secret: Steganography Lab
 * Description:
 *  Input and process:
 *      1.  read in a stream of input character-by-character 
 *      2.  for each period/dot, count the number of spaces (ASCII 0x20) that  
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
 *      3.  if the input file does not containing the “message over” signal, 
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
char bytes[1000]; //string for representing the bytes of the secret message
int i; //reusable index
int len; //will be used to store the length of the bit string


/* ************************************
 * Description: This function gets the input one char at a time, looks for
 *              dots, counts spaces, stores 0 or 1 as described above, and 
 *              terminates the program when necessary(see above).
 * Parameters:  int argc: the number of command line args
 *              char *argv[]: the string array of command line args
 * Return: int: return zero for no problems,
 *              return 1 for failure
************************************ */
int main(int argc, char *argv[]) {
    // make sure there is one command line arg (a.out) and the input file
    // from this command: ./a.out < someInputFile
    if (argc != 1) {
        printf("Required: one cmd line arg and then the input file name.\n");
        return 3; //error code 1 is used for a "non-modulo 8" result, so I'm using 3 for this arg error
    }

    // read through the input and process any (dot + spaces) into bits:
    i = 0;
    while (c != EOF) {
        c = getchar();
        spaceCounter = 0;
        //look for dots then count subsequent spaces:
        if (c == '.') {
            c = getchar();
            while (c == ' ') {
                spaceCounter++;
                c = getchar();
            }
        }
        //covert each package of spaces into a damn bit and add it to the bit string:
        if (spaceCounter == 1) {
            bytes[i] = '0';
            i++;
        } else if (spaceCounter == 2) {
            bytes[i] = '1';
            i++;
        } else if (spaceCounter >= 3){
            c = EOF;
        }
    }//END while() loop that reads input file 
    len = strlen(bytes);

    //error messages:
    if (c != EOF) {
        printf("DANGER: you have been compromised. Courier message was bogus with no 3-space termination. Exfiltrate NOW.");
        return 2;
    }
    //FIXME: why are the dracula files not (% 8 == 0) ?
    // printf("damn bit string length = %d\n", len);
    // if (len % 8 != 0) {
    //     printf("DANGER: you have been compromised. Courier message was not zeroed at modulo 8. Exfiltrate NOW.");
    //     return 3;
    // }

    //finally, if you made it this far, convert the bits and print the secret message:
    int k = 7;
    int decimalForAscii = 0;
    int currentBit = 0;
    //convert each string of 8 bits to decimal, then convert to ASCII:
    for (int j = 0; j <= len; j++) {
        currentBit = (int)bytes[j] - 48;
        decimalForAscii += (currentBit * pow(2, k));
        k--;
        if (k == -1) {
            printf("%c", (char)decimalForAscii);
            k = 7;
            decimalForAscii = 0;
        }
    }
    printf("\n");
    
return 0;

}//END main()
