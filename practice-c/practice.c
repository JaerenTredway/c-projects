#include <stdio.h>

int main(void) {
	int wage;
	printf("Let's get real, people. Enter your hourly wage: ");
	scanf("%d", &wage);
	printf("Congratulations, you looter, your salary is $");
	printf("%d\n", wage*40*50);

	return 0;
}

