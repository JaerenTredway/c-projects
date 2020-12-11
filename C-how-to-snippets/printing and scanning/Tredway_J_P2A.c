#include<stdio.h>
#include<math.h>

int main (void) {
	double exponent = (1.0/12.0);
	double r = pow(2.0, exponent); 
	double initFrequency = 0.0; //the starting frequency
	double frequency = 0.0; //each subsequent frequency

	//get input of starting frequency:
	scanf("%lf", &initFrequency);
	
	printf("%0.2lf ", initFrequency);
	frequency = initFrequency * r;
	printf("%0.2lf ", frequency);
	frequency = initFrequency * pow(r, 2);
	printf("%0.2lf ", frequency);
	frequency = initFrequency * pow(r, 3);
	printf("%0.2lf ", frequency);
	frequency = initFrequency * pow(r, 4);
	printf("%0.2lf\n", frequency);
	
	return 0;
}
