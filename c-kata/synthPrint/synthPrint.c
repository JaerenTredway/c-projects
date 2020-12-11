#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <math.h>
#include "synthArit.c"

// words is a given null-terminated string to be encoded
// result is the polynomial associated with the string words
// result needs to be preallocated with (sizeof(char)*(strlen(words)/4+1)*(9+strlen(words))*10) size
int synthPrint(char* result, char* words);
// p is a polynomial created in synthPrint
// p only has to be a null-termiated string. Nothing more
void evaluatePoly(char* p);

int synthPrint(char* result, char* words) {

	if (strcmp(words, "") == 0) {
		printf("Please give synthPrint more than an empty string\n");
		strcpy(result, "(0*x^0)/1");
		return 1;
	}
	int len = (strlen(words)-1)/4+1;
	char** input = (char**) malloc(sizeof(char*) * (len+1));
	input[len] = 0;
	long long temp;

	for (int i = 0; i < len; i++) {
		input[i] = (char*) malloc(sizeof(char) * 13);
		input[i][0] = 0;
		temp = 0;
		for (int j = 0; j < 4; j++) {
			temp *= 256;
			if ((i*4)+3-j < strlen(words)) {
				temp += words[(i*4)+3-j];
			}	
		} // end j for
		sprintf(input[i], "%lld", temp);
		input[i][12] = 0;
	} // end i for

	printf("Calculating Vandermonde Matrix:");

	int fWidth = (int) (((log10(len)+1.0) * len) + 2);

	char* mTemp = (char*) malloc(sizeof(char) * fWidth * fWidth * 8);


	char*** matrix = (char***) malloc(sizeof(char**) * len);
	for(int i = 0; i < len; i++) {
		matrix[i] = (char**) malloc(sizeof(char*) * len+1);
		for(int j = 0; j < len+1; j++) {
			if (j == len)
				matrix[i][j] = (char*) malloc(sizeof(char) * (fWidth * fWidth));
			else
				matrix[i][j] = (char*) malloc(sizeof(char) * (fWidth * 2));
			matrix[i][j][0] = 0;
			if (j == len)
				strcpy(matrix[i][j], input[i]);
			else if(j == 0)
				strcpy(matrix[i][j], "1");
			else if(i == 0)
			 	strcpy(matrix[i][j], "0");
			else if(j == 1)
				sprintf(matrix[i][j], "%d", i);
			else
				synthMult(matrix[i][j], matrix[i][j-1], matrix[i][1]);
		} // end j for
		if ((i % 5) == 4) printf(".");
	} //end i for

	printf("\nPreforming Gaussian Elimination:");
	char* factor = (char*) malloc(sizeof(char) * (fWidth + 1));
	char* temp1 = (char*) malloc(sizeof(char) * fWidth * 4);

	// i is the pivot row - This needs to be i < len-1
	for (int i = 0; i < len-1; i++) {
		// I is the row having it's first element eliminated
		for (int I = i+1; I < len; I++) {
			synthDiv(factor, matrix[I][i], matrix[i][i]);
			synthMult(temp1, factor, matrix[i][i]);
			if (strcmp(temp1, matrix[I][i]) != 0) {
				printf("Division resulted in non-integer division\n");
				return 0;
			}
			strcpy(matrix[I][i], "0");
			// j is the column currently having the difference between rows being calculated
			for (int j = i+1; j < len+1; j++){
				synthMult(temp1, factor, matrix[i][j]);
				synthSub(matrix[I][j], matrix[I][j], temp1);
			} // end j for
		} // end I for
		if ((i % 5) == 4) printf(".");
	} // end i for

	char* prod = (char*) malloc (sizeof(char) * fWidth * 2);
	strcpy(prod, "1");
	for (int i = len-1; i >= 0; i--) {
		for (int j = i; j < len+1; j++) {
			if (i == 0 && j > 1 && j < len) strcpy(matrix[i][j], "0");
			synthMult(matrix[i][j], matrix[i][j], prod);
		}
		sprintf(temp1, "%d", i);
		synthMult(prod, prod, temp1);
	}		

	printf("\nPreforming Backwards Substitution:");

	char* temp2 = (char*) malloc (sizeof(char) * (fWidth+3) * fWidth);
	char* temp3 = (char*) malloc (sizeof(char) * (fWidth+3) * fWidth);
	char* temp4 = (char*) malloc (sizeof(char) * 2 * (fWidth+1) * fWidth);

	// This needs to be i >= 1
	for(int i = len-1; i >= 1; i--) {
		for (int I = i-1; I >= 1; I--){
			synthMult(temp2, matrix[i][i], matrix[I][len]);
			synthMult(temp3, matrix[I][i], matrix[i][len]);
			synthSub(matrix[I][len], temp2, temp3);
			synthAdd(mTemp, temp3, matrix[I][len]);
			synthDiv(matrix[I][len], matrix[I][len], matrix[i][i]);
			strcpy(matrix[I][i], "0");
		}
		if ((i % 5) == 4) printf(".");
	}

	char** tempFin = (char**) malloc (sizeof(char*) * len);
	for (int i = 0; i < len; i++) {
		tempFin[i] = (char*) malloc(sizeof(char) * (fWidth*fWidth*5));
		strcpy(tempFin[i], "0");
	}
	char* tempFin3 = (char*) malloc(sizeof(char) * (fWidth*fWidth*5));

	int* out = (int*) malloc (sizeof(int) * (len+1));
	strcpy(result, "");
	out[len] = 0;

	printf("\nFinal polynomial:\n\n(");
	strcpy(result, "(");
	for(int i = len-1; i >= 0; i--) {
		for (int j = 0; j < len; j++) {
			sprintf(tempFin3, "%d", j);
			synthPow(tempFin3, tempFin3, i);
			synthMult(tempFin3, tempFin3, matrix[i][len]);
			synthAdd(tempFin[j], tempFin[j], tempFin3);
		}
		printf("%s*x^%d", matrix[i][len], i);
		sprintf(temp1, "%s*x^%d", matrix[i][len], i);
		strcat(result, temp1);
		if(i != 0) {
			if (matrix[i-1][len][0] != '-') {
				printf("+");
				strcat(result, "+");
			}
		}

	} // end for
	printf(")/%s\n\n\n", matrix[0][0]);
	sprintf(temp1, ")/%s", matrix[0][0]);
	strcat(result, temp1);

	/*for (int i = len-1; i >= 0; i--) {
		synthDiv(tempFin[i], tempFin[i], matrix[0][0]);
		//printf("%3d: %s ---- %s\n", i, tempFin[i], input[i]);
		out[i] = atoi(tempFin[i]);
	}
	printf("\n\n%s\n\n", out);
	*/
	
	free(input);
	free(mTemp);
	free(matrix);
	free(factor);
	free(temp1);
	free(temp2);
	free(temp3);
	free(temp4);
	free(prod);
	free(tempFin);
	free(tempFin3);
	free(out);

	return 0;

}

void evaluatePoly(char* p) {


	char* poly = (char*) malloc(sizeof(char) * (sizeof(char) * strlen(p) + 1));
	char* polyEx = (char*) malloc(sizeof(char) * (sizeof(char) * 2 * (strlen(p) + 1)));
	for (int i = 0; i < (strlen(p)*2)+1; i++) polyEx[i] = 0;
	strcpy(poly, p);
	poly++;
	char* div;
	for(int i = 0 ; i < strlen(p) + 1; i++) {
		if (poly[i] == '/') {
			div = poly+i+1;
			poly[i] = 0;
			break;
		}
	}

	char** coeff = (char**) malloc(sizeof(char*) * (strlen(p)));
	char** pow   = (char**) malloc(sizeof(char*) * (strlen(p)));
	coeff[0] = polyEx;
	int coeffI;
	if (poly[0] != '-')
		coeffI = 1;
	else
		coeffI = 0;
	int powI = 0;

	for(int i = 0; i < strlen(p) + 1; i++) {
		if (poly[i] == '-' ) {
			strcat(polyEx, " -");
			coeff[coeffI] = polyEx + strlen(polyEx) - 1;
			coeffI++;
			continue;
		}
		if (poly[i] == '+') {
			strcat(polyEx, " ");
			coeff[coeffI] = polyEx + strlen(polyEx);
			coeffI++;
			continue;
		}
		if ((poly[i] == '*') || (poly[i] == 'x') || (poly[i] == '(')) {
			continue;
		}
		if (poly[i] == '^') {
			strcat(polyEx, " ");
			pow[powI] = polyEx + strlen(polyEx);
			powI++;
			continue;
		}
		if (poly[i] == ')')
			break;
		strncat(polyEx, poly+i, 1);
	}
	int s = strlen(polyEx);
	for (int i = 0; i < s; i++)
		if (polyEx[i] == ' ') polyEx[i] = 0;


	char* temp1 = (char*) malloc (sizeof(char) * (strlen(p)));
	char* temp2 = (char*) malloc (sizeof(char) * (strlen(p)));
	char* temp3 = (char*) malloc (sizeof(char) * (strlen(p)));
	int out[coeffI+1];
	out[coeffI] = 0; 
	// this is x
	for (int i = 0; i < coeffI; i++) {
		strcpy(temp1, "0");
		// this is the part being evaluated
		for (int j = 0; j < coeffI; j++) {
			sprintf(temp2, "%d", i);
			synthPow(temp2, temp2, atoi(pow[j]));
			synthMult(temp2, temp2, coeff[j]);
			synthAdd(temp1, temp1, temp2);
		}
		synthDiv(temp1, temp1, div);
		out[i] = atoi(temp1);
	}

	char* r = (char*) out;
	printf("Evaluation: %s\n", r);

	return;

}

