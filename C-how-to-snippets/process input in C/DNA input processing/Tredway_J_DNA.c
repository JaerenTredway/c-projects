#include <stdio.h>
#include <stdlib.h> // used for exit()
#include <ctype.h>  // used for toupper()

/* ************************************
 * author:       Jaeren Tredway
 * project:      #5: DNA Counting Lab
 * Description:  This program reads in standard input and looks at each
 *               nucleic acid, counting the four types, and then calculates
 *               the percentages and reports the results to standard output.
 * To compile, run, and test:
 *               gcc Tredway_J_DNA.c
 *               ./a.out < dnaInput_1 > myOutput
 *               diff myOutput outputFile_1
 ************************************ */


// variables:
unsigned int counterA = 0;
unsigned int counterC = 0;
unsigned int counterG = 0;
unsigned int counterT = 0;
float percentA = 0.0;
float percentT = 0.0;
float percentC = 0.0;
float percentG = 0.0;
char c;       // use getchar() to read one input char at a time in main()
int numBases; // increment this after each input character is read


/* ************************************
 * Description: This function takes a char and increments its counter.
 * Parameters:  char c: the character being read in from stdin
 * Return:      void
************************************ */
void nucleicCounter(char c) {
    char nucleic = toupper(c);
    switch (nucleic) {
    case 'A':
        counterA++;
        break;
    case 'C':
        counterC++;
        break;
    case 'G':
        counterG++;
        break;
    case 'T':
        counterT++;
        break;
    default:
        printf("Bad input encountered, terminating program.");
        exit(1);
    }
} // END nucleicCounter()


/* ************************************
 * Description: This main function loops through the input, uses 
 *              nucleicCounter() to count the acids, and reports 
 *              the results.
 * Parameters:  int argc: the number of command line args
 *              char *argv[]: the string array of command line args
 * Return: int: return zero for no problems,
 *              return 1 for failure
************************************ */
int main(int argc, char *argv[]) {
    // make sure there is one command line arg:
    // from this call: ./a.out < dnaInput_1 > myOutput
    if (argc != 1) {
        printf("Required: one cmd line arg with the executable file name.\n");
        return 1;
    }

    // get the next char from input and analyze it:
    c = getchar();
    numBases = 0;
    while (c != EOF) {
        if (c != ' ' && c != '\n' && c != '\t') {
            nucleicCounter(c);
            c = getchar();
        }
        else if (c == ' ' || c == '\n' || c == '\t') {
            getchar();
            break;
        } else {
            printf("Bad DNA encountered, aborting program.\n");
            return 1;
        }
        numBases++;
    } // END input reader

    // calculate percentages and output results:
    percentA = ((float)counterA / (float)numBases) * 100;
    percentC = ((float)counterC / (float)numBases) * 100;
    percentG = ((float)counterG / (float)numBases) * 100;
    percentT = ((float)counterT / (float)numBases) * 100;

    printf("The DNA sequence has %d bases\n", numBases);
    printf("%6.2f%% of the bases are A\n", percentA);
    printf("%6.2f%% of the bases are C\n", percentC);
    printf("%6.2f%% of the bases are G\n", percentG);
    printf("%6.2f%% of the bases are T\n", percentT);

    return 0;
} //END main()
