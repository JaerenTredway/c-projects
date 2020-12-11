#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "synthPrint.c"

// There are two important functions in synthPrint.c
// 1) synthPrint(a, b) a is the polynomial associated to input b, the string to be encoded
// 2) evaluatePoly(a)  a is the polynomial which is evaluated and the result is printed

// Also note that complexity grows at around log(n)*n^4. Strings on a decent computer
// of length over 300 take a couple of minutes to compute the polynomial

// So many notes! If you want to make the second argument to have spaces, surround it with quotes like a string

int main(int argc, char *argv[]) {

	char* words;
	const int MAX_WORDS_LEN = 500;
	char* pol;
	pol = "(-231141499234927*x^19+41554173858361399*x^18-3462368741427304200*x^17+177467792699570622726*x^16-6263128643183892175290*x^15+161403835784721303137298*x^14-3143127942378482927353420*x^13+47215657394540875385877472*x^12-553628276823359788916800623*x^11+5094369839393912516827143327*x^10-36787216989583880294994360660*x^9+207398433530047226694542261778*x^8-903162746119513927453859608576*x^7+2985076636639063120952048227456*x^6-7288577265343427251438848016320*x^5+12609957441921499132559970501024*x^4-14443930072042563802418261731584*x^3+9671759205616941083588795051520*x^2-2806180535751299758783336550400*x^1+66116150357502642388992000*x^0)/121645100408832000";

	if (argc == 1) {
		// This is the words associated with the above polynomial. This is just the default case
		// Uncomment the lines below to change the input string and create a new polynomial
		//words = "The wonders of Lagrangian Interpolation, Linear Algebra, Polynomials, and Magic\n";
		//pol = (char*) malloc (sizeof(char)*(strlen(words)/4+1)*(9+strlen(words))*10);
		//synthPrint(pol, words);
		printf("\n");
		evaluatePoly(pol);
		printf("\nIf you want to change the input at the terminal, add it as a second argument \"./synthPrint2.exe <string>\"\n\n");
		return 0;	
	}
	else if (argc == 2) {
		words = argv[1];
		pol = (char*) malloc (sizeof(char)*(strlen(words)/4+1)*(9+strlen(words))*10);
		synthPrint(pol, words);
		evaluatePoly(pol);
		return 0;
	}
	else {
		printf("You need to give less than 3 arguments\n");
		return 1;
	}

	// This should never be run
	return 0;

} // end main
