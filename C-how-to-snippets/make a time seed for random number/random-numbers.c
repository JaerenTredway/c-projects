#include <stdio.h>
#include <stdlib.h> //for rand() and srand()
#include <time.h>   //for time()
#define ROWS 10
#define COLS 10

/* 
 * author:      Jaeren Tredway
 * project:     #6: 2D Array | Table of Numbers
 * Description: This program builds a 2D array of random numbers using
 *              a time seed. Then it finds the count, sum, and average
 *              of both the positive numbers and the negative numbers,
 *              then outputs a report of the above analysis.
 * To compile and run:
 *               gcc number_table.c
 *               ./a.out
 */

int main(void) {
	//make a seed for rand() that changes every time the program is run:
	srand((int)time(0)); 
	//note: time(0) returns the number of seconds since Jan 1, 1970
	int myNums[ROWS][COLS];
	int countPos;
	int countNeg;
	int sumPos;
	int sumNeg;
	float avgPos;
	float avgNeg;

	//build a 10x10 array filled with random numbers:
	for (int i = 0; i < ROWS; i++) {
		for (int j = 0; j < COLS; j++) {
			//assign each index with -50 to 49:
			myNums[i][j] = (rand() % 100) - 50; 
		}
	}

	//print out the array:
	for (int i = 0; i < ROWS; i++) {
		for (int j = 0; j < COLS; j++) {
			printf("%4.1d", myNums[i][j]);
		}
		printf("\n");
	}
    printf("\n");

	//find the count, sum, and average for pos and neg:
    countPos = 0;
	countNeg = 0;
	sumPos = 0;
	sumNeg = 0;
	avgPos = 0.0;
	avgNeg = 0.0;
    //process negative numbers:
	for (int i = 0; i < ROWS; i++) {
		for (int j = 0; j < COLS; j++) {
			if (myNums[i][j] < 0) {
                countNeg++;
                sumNeg += myNums[i][j];
            }
		}
	}
    avgNeg = (float)sumNeg / (float)countNeg;
    //process positive numbers:
    for (int i = 0; i < ROWS; i++) {
		for (int j = 0; j < COLS; j++) {
			if (myNums[i][j] >= 0) {
                countPos++;
                sumPos += myNums[i][j];
            }
		}
	}
    avgPos = (float)sumPos / (float)countPos;

    //output the analysis:
    printf("The count of positive nums is: %d\n", countPos);
    printf("The count of negative nums is: %d\n", countNeg);
    printf("The sum of positive nums is: %d\n", sumPos);
    printf("The sum of negative nums is: %d\n", sumNeg);
    printf("The average of positive nums is: %3.2f\n", avgPos);
    printf("The average of negative nums is: %3.2f\n", avgNeg);

  	return 0;
}
