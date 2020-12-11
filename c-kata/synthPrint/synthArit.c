#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <math.h>

void synthPow(char *r, const char* a, const int n) ;
void synthSub(char* r, const char* a, const char* b) ;
void synthAdd(char* r, const char* a, const char* b) ;
void synthMult(char* r, const char* a, const char* b) ;
void synthDiv(char* q, const char* a, const char* b);
void synthGcd(char* r, const char* a, const char* b);


// Precondition: a must only contain digits. r must be pre-allocated
// Postcondition: r will store gcd of a and b
void synthGcd(char* r, const char* a, const char* b) {

	// Base Case: Get rid of the negative signs on a and b
	if (a[0] == '-') {
		if (b[0] == '-') {
			synthGcd(r, a+1, b+1);
			return;
		}
		else {
			synthGcd(r, a+1, b);
			return;
		}
	}
	else {
		if (b[0] == '-') {
			synthGcd(r, a, b+1);
			return;
		}
	}

	// Base Case: Reverse elements if a < b
	if (strlen(a) < strlen(b) || ((strcmp(a, b) < 0 && strlen(a) == strlen(b)))) {
		synthGcd(r, b, a);
		return;
	}

	// Base Case: If the smaller element is 0, return the GCD
	if (strcmp(b, "0") == 0) {
		strcpy(r, a);
		return;
	}
		
	// Now, a > b
	char* temp = (char*) malloc(sizeof(char) * (strlen(a)+2));
	synthDiv(temp, a, b);
	synthMult(temp, temp, b);
	// temp is now the closest product of b below a
	synthSub(temp, a, temp);
	synthGcd(r, b, temp); // This is Euclid's algorithm for finding a GCD
	free(temp);
	return;

} // end GCD


// Precondition: a holds the dividend, b is the divisor. q must be pre-allocated
// Postcondition: q will hold the integer quotient of a and b
void synthDiv(char* q, const char* a, const char* b) {

	// Base Case: Dividing by 0 
	if (strcmp(b, "0") == 0) {
		printf("\nCannot Divide by 0\n");
		return;
	} // end if

	// Dealing with negative numbers
	if (a[0] == '-') {
		// Both are negative
		if (b[0] == '-') {
			synthDiv(q, a+1, b+1);
			return;
		} // end if
		// a is negative, b isn't
		else {
			char* temp = (char*) malloc(sizeof(char) * (strlen(a)+3));
			synthDiv(temp, a+1, b);
			strcpy(q, "-");
			strcat(q, temp);
			free(temp);
			return;
		} // end else
	} // end if
	else {
		// b is negative, a isn't
		if (b[0] == '-') {
			char* temp = (char*) malloc(sizeof(char) * (strlen(a)+3));
			synthDiv(temp, a, b+1);
			strcpy(q, "-");
			strcat(q, temp);
			free(temp);
			return;
		} // end if
	} // end else

	// Base Case: b > a, so quotient is 0
	if (strlen(a) < strlen(b) || ((strcmp(a, b) < 0 && strlen(a) == strlen(b)))) {
		strcpy(q, "0");
		return;
	}

	// A copy of a that can be changed
	char* A = (char*) malloc(sizeof(char)*(strlen(a)+1));
	strcpy(A, a);
	// Space for the quotient to put in the return value q
	char* res = (char*) malloc(sizeof(char)*(strlen(a)+1));
	strcpy(res, "");
	res[0] = 0;

	char* temp = (char*) malloc(sizeof(char)*(strlen(a)+1));
	strcpy(temp, "");
	temp[0] = 0;

	char tempChr = 0;
	int num = 0; // Running number to be appended to the result
	int index = strlen(A)-strlen(b);

	// To start, see if b divides a, where b and a are left adjusted
	synthPow(temp, "10", strlen(A) - strlen(b));
	synthMult(temp, temp, b);
	// Repeatedly subtract until A < temp
	while(strlen(A) > strlen(temp) || ( strcmp(A, temp) >= 0 && strlen(A) == strlen(temp)) ) {
		num++;
		synthSub(A, A, temp);
	}
	// Add the running sum if b did divide a
	sprintf(temp, "%d", num);
	temp[1] = 0; // Make sure temp is 1 digit long
	if (num != 0) strcat(res, temp);
	// Keep subtracting smaller multiples until the original b no longer divides A
	index--;
	while(index >= 0) {
		num = 0;
		synthPow(temp, "10", index);
		synthMult(temp, temp, b);
		while(strlen(A) > strlen(temp) || (strcmp(A, temp) >= 0 && strlen(A) == strlen(temp)) ) {
			num++;
			synthSub(A, A, temp);
		}
		sprintf(temp, "%d", num);
		temp[1] = 0; // Make sure temp is one digit long
		strcat(res, temp);
		index--;
	}
	// Copy the result into q
	strcpy(q, res);

	free(temp);
	free(A);
	free(res);

} // end synth Div


// Precondition: a must only contain digits. r must be pre-allocated, with log10(atoi(a))*n space
// Postcondition: a to the power n will be stored in r
void synthPow(char* r, const char* a, const int n) {

	// Base Case: If a is negative, pretend that it is positive
	if(a[0] == '-') {
		synthPow(r, a+1, n);
		return;
	}

	// Base Case: If n is 0 or less, make the return 1
	if (n <= 0) {
		strcpy(r, "1");
		return;
	} // end if

	// Find products of a that will fit into an integer
	int num = (9.0 / log10(atoi(a))); // number of power possible below 9 digits
	if (num == 0) num = 1; // This is incase a has more than 9 digits

	// If the power can fit in a long long, do it that way
	if (n-num < 0) {
		unsigned long long prod = pow(atoi(a), n);
		sprintf(r, "%llu", prod);
		return;
	} // end if

	// If power cannot fit in a long long well, fit what can be in a long long
	// and calculate the 
	unsigned long long prod = pow(atoi(a), num);
	synthPow(r, a, n-num);
	// A will hold the current product of num elements possible
	char A[11];
	for(int i = 0; i < 10; i++) A[i] = 0;
	sprintf(A, "%llu", prod);
	// Multiply a^n-num and a^num
	synthMult(r, A, r);

} // end synthPow

// Precondition: a,b must only contain digits, and possible a negative sign. 
//               r must be pre-allocated, with max(alen,blen)+1 space
// Postcondition: the difference of a,b will be stored in r
void synthSub(char* r, const char* a, const char* b) {

	// Base Case: a is 0, so return negative b
	if (strcmp(a, "0") == 0) {
		r[0] = 0;
		strcpy(r, "-");
		strcat(r, b);
		return;
	} // end base if

	// Base Case : b is 0, so return a
	if (strcmp(b, "0") == 0) {
		strcpy(r, a);
		return;
	} // end base if

	// Base Case : a is negative
	if(a[0] == '-') {
		// Base Case : b is also negative
		if(b[0] == '-') {
			// Over allocate space
			char* R = (char*) malloc(sizeof(char) * ((strlen(a) + strlen(b))+3));
			R[0] = 0;
			// Find subtraction without the negative sign, and then flip the sign
			synthSub(R, a+1, b+1);
			if (R[0] == '-') { // If R is negative, remove sign
				strcpy(r, R+1);
				return;
			}
			// Otherwise add a sign
			strcpy(r, "-");
			strcat(r, R);
			free(R);
			return;
		}
		// Base Case : Only a is negative
		else {
			// Over allocate space
			char* R = (char*) malloc(sizeof(char) * ((strlen(a) + strlen(b))+3));
			R[0] = 0;
			// Add the numbers, and then make that number negative
			synthAdd(R, a+1, b);
			r[0] = 0;
			strcpy(r, "-");
			strcat(r, R);
			free(R);
			return;
		}
	}
	else {
		// Base Case : b is negative
		if(b[0] == '-') {
			// Simply add the sign-less numbers
			synthAdd(r, a, b+1);
			return;
		}
	}

	// Base Case: a and b are positive, and a < b. The result will ne negative
	if(strlen(a) < strlen(b) || ((strlen(a) == strlen(b)) && (strcmp(a, b) < 0))) {
		char* R = (char*) malloc(sizeof(char) * ((strlen(a) + strlen(b))+3));
		synthSub(R, b, a);
		strcpy(r, "-");
		strcat(r, R);
		free(R);
		return;
	}

	int alen = strlen(a); // length of the a input
	int blen = strlen(b); // length of the b input
	int rlen = alen; // the result will be at most the length of a


	// this is where the final string value will be stored
	char* result = (char*) malloc(sizeof(char) * (rlen+1));
	for (int i = 0; i < rlen+1; i++) result[i] = 0;

	// this is the partitioning of the result into int-sized pieces
	char resPart[((rlen-1)/9)+1][10];
	for (int i = 0; i < ((rlen-1)/9)+1; i++)
		for (int j = 0; j < 10; j++)
			resPart[i][j] = 0;

	// this is partitioning a into int sized pieces
	char aPart[((alen-1)/9)+1][10];
	int aPartLen = ((alen-1)/9)+1;
	for (int i = 0; i < aPartLen; i++) {
		if (i != aPartLen-1) {
			strncpy(aPart[i], a+alen-(9*(i+1)), 9);
			aPart[i][9] = 0;
		}
		else {
	    		strncpy( aPart[aPartLen-1], a, 9);
			aPart[aPartLen-1][alen-((aPartLen-1)*9)] = 0;
		}
	}

	// this is partitioning b into int sized pieces
	char bPart[((blen-1)/9)+1][10];
	int bPartLen = ((blen-1)/9)+1;
	for (int i = 0; i < bPartLen; i++) {
		if (i != bPartLen-1) {
			strncpy(bPart[i], b+blen-(9*(i+1)), 9);
			bPart[i][9] = 0;
		}
		else {
	    		strncpy( bPart[bPartLen-1], b, 9);
			bPart[bPartLen-1][blen-((bPartLen-1)*9)] = 0;
		}
	}


	long long tem;
	long long diff;
	int depth = 0;

	// this is the actual subtraction of a and b (partitioned)
	for (int i = aPartLen-1; i >= 0; i--) {
		// If b is significantly smaller than a, skip it for a bit
		if (i > bPartLen-1)
			diff = (long long) atoi(aPart[i]);
		else
			diff = (long long) (atoi(aPart[i])) - (long long) (atoi(bPart[i]));
		// This is in the case that we need to borrow
		if (diff < 0) {
			depth = 1;
			diff += 1000000000;
			tem = atoi(resPart[i+depth]);
			// Keep borrowing until the value is non-zero
			while (tem == 0 && aPartLen > i+depth){
				resPart[i+depth][0] = 0;
				sprintf(resPart[i+depth], "999999999");
				resPart[i+depth][9] = 0;
				depth++;
				tem = atoi(resPart[i+depth]);
			}
			resPart[i+depth][0] = 0;
			sprintf(resPart[i+depth], "%llu", tem-1);
		} // end if
		// Add whatever is the difference now to the result
		resPart[i][0] = 0;
		sprintf(resPart[i], "%llu", diff);
	} // end i for

	int num;
	int hasSeenNonZero = 0;
	int lastZero = 0;

	// concat all of the partitions of the result with the appropiate number of 0's of padding
	for (int i = (rlen-1)/9; i >= 0; i--) {
		if(strcmp(resPart[i], "0") == 0 && hasSeenNonZero == 0) continue;
		if(hasSeenNonZero == 0) {
			lastZero = i;
			hasSeenNonZero = 1;
		} // end if
		// Add zeros as padding
		if(atoi(resPart[i]) < 100000000 && (i != lastZero)) {
			if (strcmp(resPart[i], "0") == 0) strcat(result, "00000000");
			else {
				num = log10(999999999.0/atoi(resPart[i]));
				for (int i = 0; i < num; i++)
					strcat(result, "0");
			} // end else
		} // end if
		strcat(result, resPart[i]);
	}

	// copy the result into the provided pointer
	strcpy(r, result);
	if(result[0] == 0) strcpy(r, "0");
	free(result);

} // end synthSub


// Precondition: a,b must only contain digits. r must be pre-allocated, with max(alen,blen)+1 space
// Postcondition: the sum of a,b will be stored in r
void synthAdd(char* r, const char* a, const char* b) {

	// Base Case: b is 0, return should be a
	if (strcmp(b, "0") == 0) {
		strcpy(r, a);
		return;
	} // end base if

	// Base Case: a is 0, return should be b
	if (strcmp(a, "0") == 0) {
		strcpy(r, b);
		return;
	} // end base if

	// Base Case : a is negative
	if (a[0] == '-') {
		// Base Case : a and b are both negative
		if (b[0] == '-') {
			char* R = (char*) malloc(sizeof(char) * ((strlen(a) + strlen(b))+3));
			R[0] = 0;
			// Add the unsigned values and append a - to the result
			synthAdd(R, a+1, b+1);
			r[0] = 0;
			strcpy(r, "-");
			strcat(r, R);
			free(R);
			return;
		}
		// Base Case : only a is negative
		else {
			synthSub(r, b, a+1);
			return;
		}
	}
	else {
		// Base Case : only b is negative
		if (b[0] == '-') {
			synthSub(r, a, b+1);
			return;
		}
	}

	int alen = strlen(a);
	int blen = strlen(b);
	int rlen;
	// rlen needs to be 1 larger than the max, cause result could be twice it
       	if(alen > blen) rlen = alen+1;
	else            rlen = blen+1;

	// this is where the final string value will be stored
	char* result = (char*) malloc(sizeof(char) * (rlen+1));
	for (int i = 0; i < rlen+1; i++) result[i] = 0;

	// this is the partitioning of the result into int-sized pieces
	char resPart[((rlen-1)/9)+1][10];
	int rPartLen = ((rlen-1)/9)+1;
	for (int i = 0; i < rPartLen; i++)
		for (int j = 0; j < 10; j++)
			resPart[i][j] = 0;

	// this is partitioning a into int sized pieces
	char aPart[((alen-1)/9)+1][10];
	int aPartLen = ((alen-1)/9)+1;
	for (int i = 0; i < aPartLen; i++) {
		if (i != aPartLen-1) {
			strncpy( aPart[i], a+alen-(9*(i+1)), 9);
			aPart[i][9] = 0;
		}
		else {
	    		strncpy( aPart[(alen-1)/9], a, 9);
			aPart[aPartLen-1][alen-(aPartLen-1)*9] = 0;
		}
	}

	// this is partitioning b into int sized pieces
	char bPart[((blen-1)/9)+1][10];
	int bPartLen = ((blen-1)/9)+1;
	for (int i = 0; i < bPartLen; i++) {
		if (i != bPartLen-1) {
			strncpy( bPart[i], b+blen-(9*(i+1)), 9);
			bPart[i][9] = 0;
		}
		else {
	    		strncpy( bPart[(blen-1)/9], b, 9);
		       	bPart[bPartLen-1][blen-(bPartLen-1)*9] = 0;
		}
	}


	unsigned long long carry = 0;
	unsigned long long sum;

	// this is the actual addition of a and b (partitioned)
	for (int i = 0; i < rPartLen; i++) {
		sum = carry;
		carry = 0;
		// This if needs to be here incase the result is longer than the summands
		if (i >= aPartLen && i >= bPartLen)
			sum += 0;
		else if (i >= aPartLen)
			sum += (long long) atoi(bPart[i]);
		else if (i >= bPartLen)
			sum += (long long) atoi(aPart[i]);
		else
			sum += (long long) atoi(aPart[i]) + (long long) atoi(bPart[i]);
		carry = sum / 1000000000LL;
		sprintf(resPart[i], "%llu", sum % 1000000000LL);
	} // end i for

	int num;
	int hasSeenNonZero = 0;
	int lastZero = 0;
	// Is this needed???
	if (strcmp("", resPart[rPartLen-1]) == 0) strcpy(resPart[rPartLen-1], "0");

	// concat all of the partitions of the result with the appropiate number of 0's of padding
	for (int i = rPartLen-1; i >= 0; i--) {
		if(strcmp(resPart[i], "0") == 0 && hasSeenNonZero == 0) continue;
		if(hasSeenNonZero == 0) {
			lastZero = i;
			hasSeenNonZero = 1;
		} // end if
		// Add zeros as padding
		if(atoi(resPart[i]) < 100000000 && (i != lastZero)) {
			if (strcmp(resPart[i], "0") == 0) strcat(result, "00000000");
			else {
				num = log10(999999999.0/atoi(resPart[i]));
				for (int i = 0; i < num; i++)
					strcat(result, "0");
			} // end else
		} // end if
		strcat(result, resPart[i]);
	}

	// copy the result into the provided pointer
	if (result[0] == 0) strcpy(result, "0");
	strcpy(r, result);
	free(result);

} // end synthMult


// Precondition: a,b must only contain digits. r must be pre-allocated, with alen*blen+1 space
// Postcondition: the product of a,b will be stored in r
void synthMult(char* r, const char* a, const char* b) {

	// Base Case: a or b is 0, so product is 0
	if (strcmp(a, "0") == 0 || strcmp(b, "0") == 0) {
		strcpy(r, "0");
		return;
	} // end base if

	// Base Case: a is negative
	if (a[0] == '-')
		// Base Case: Both a and b are negative
		if (b[0] == '-') {
			// Same as if they both weren't negative
			synthMult(r, a+1, b+1);
			return;
		}
		// Base Case: only a is negative
		else {
			char* R = (char*) malloc(sizeof(char) * ((strlen(a) * strlen(b))+2));
			R[0] = 0;
			synthMult(R, a+1, b);
			r[0] = 0;
			strcpy(r, "-");
			strcat(r, R);
			free(R);
			return;
		}
	else {
		// Base Case: only b is negative
		if (b[0] == '-') {
			char* R = (char*) malloc(sizeof(char) * ((strlen(a) * strlen(b))+2));
			R[0] = 0;
			synthMult(R, a, b+1);
			r[0] = 0;
			strcpy(r, "-");
			strcat(r, R);
			free(R);
			return;
		}
	}

	int alen = strlen(a);
	int blen = strlen(b);
	int rlen = alen + blen;
	char* result;
	
	const int width = 4;

	// this is where the final string value will be stored
	result = (char*) malloc(sizeof(char) * (rlen+1));
	for (int i = 0; i < rlen+1; i++) result[i] = 0;

	// this is the partitioning of the result into int-sized pieces
	char resPart[((rlen-1)/width)+1][width+1];
	int rPartLen = ((rlen-1)/width)+1;
	for (int i = 0; i < rPartLen; i++)
		for (int j = 0; j < width+1; j++)
			resPart[i][j] = 0;

	// this is partitioning a into int sized pieces
	char aPart[((alen-1)/width)+1][width+1];
	int aPartLen = ((alen-1)/width)+1;
	for (int i = 0; i < aPartLen; i++) {
		if (i != alen/width) {
			strncpy( aPart[i], a+alen-(width*(i+1)), width);
			aPart[i][width] = 0;
		}
		else {
	    		strncpy(aPart[aPartLen-1], a, width);
			aPart[aPartLen-1][alen-(aPartLen-1)*width] = 0;
		}
	}

	// this is partitioning b into int sized pieces
	char bPart[((blen-1)/width)+1][width+1];
	int bPartLen = ((blen-1)/width)+1;
	for (int i = 0; i < bPartLen; i++) {
		if (i != bPartLen-1) {
			strncpy( bPart[i], b+blen-(width*(i+1)), width);
			bPart[i][width] = 0;
		}
		else {
	    		strncpy( bPart[bPartLen-1], b, width);
		       	bPart[bPartLen-1][blen-(bPartLen-1)*width] = 0;
		}
	}

	unsigned long long carry = 0;
	unsigned long long sum;

	// this is the actual multiplication of a and b (partitioned)
	for (int i = 0; i < rPartLen; i++) {
		sum = carry;
		carry = 0;
			for (int j = 0; j < aPartLen; j++) {
				if (i-j < 0 || i-j >= bPartLen) continue;
				sum += (long long) atoi(aPart[j]) * (long long) atoi(bPart[i-j]);
			} // end j for
		//carry = sum / 1000000000LL;
		//sprintf(resPart[i], "%llu", sum % 1000000000LL);
		carry = sum / 10000LL;
		sprintf(resPart[i], "%llu", sum % 10000LL);
	} // end i for

	int num;
	int hasSeenNonZero = 0;
	int lastZero = 0;

	// concat all of the partitions of the result with the appropiate number of 0's of padding
	for (int i = rPartLen-1; i >= 0; i--) {
		if(strcmp(resPart[i], "0") == 0 && hasSeenNonZero == 0) continue;
		if(hasSeenNonZero == 0) {
			lastZero = i;
			hasSeenNonZero = 1;
		} // end if
		// Add zeros as padding
		if(atoi(resPart[i]) < 1000 && (i != lastZero)) {
		//if(atoi(resPart[i]) < 100000000 && (i != lastZero)) {
			if (strcmp(resPart[i], "0") == 0) strcat(result, "000");
			//if (strcmp(resPart[i], "0") == 0) strcat(result, "0000000");
			else {
				num = log10(9999.0/atoi(resPart[i]));
				//num = log10(999999999.0/atoi(resPart[i]));
				for (int i = 0; i < num; i++)
					strcat(result, "0");
			} // end else
		} // end if
		strcat(result, resPart[i]);
	}

	// copy the result into the provided pointer
	if (result[0] == 0) strcpy(result, "0");
	r[0] = 0;
	strcpy(r, result);
	free(result);

} // end synthMult
