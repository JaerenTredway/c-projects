#include <stdio.h>
#include <stdlib.h>
#include <time.h>     // Enables use of time()

int main (argc, *argv[]) {

    struct numberObject {
        int lastIndexStored[10];
        int zeroBox[100];
        int oneBox[100];
        int twoBox[100];
        int threeBox[100];
        int fourBox[100];
        int fiveBox[100];
        int sixBox[100];
        int sevenBox[100];
        int eightBox[100];
        int nineBox[100];
    };
    
    for (int i = 0; i < 100; i++) {
        srand((int)time(0)); // make a unique seed
        int currentNum = rand() / 1000000;
        int currentLSD = currentNum % 10;
        switch (currentLSD) {
            case 0 :
                zeroBox[lastIndexStored] = currentLSD;
                lastIndexStored[0]++;
                break;
            case 1 :
                oneBox[lastIndexStored] = currentLSD;
                lastIndexStored[1]++;
                break;
            case 2 :
                twoBox[lastIndexStored] = currentLSD;
                lastIndexStored[2]++;
                break;
            case 3 :
                threeBox[lastIndexStored] = currentLSD;
                lastIndexStored[3]++;
                break;
            case 4 :
                fourBox[lastIndexStored] = currentLSD;
                lastIndexStored[4]++;
                break;
            case 5 :
                fiveBox[lastIndexStored] = currentLSD;
                lastIndexStored[5]++;
                break;
            case 6 :
                sixBox[lastIndexStored] = currentLSD;
                lastIndexStored[6]++;
                break;
            case 7 :
                sevenBox[lastIndexStored] = currentLSD;
                lastIndexStored[7]++;
                break;
            case 8 :
                eightBox[lastIndexStored] = currentLSD;
                lastIndexStored[8]++;
                break;
            case 9 :
                nineBox[lastIndexStored] = currentLSD;
                lastIndexStored[9]++;
                break;
            default :
                printf("Bad Input");
                return 1;
        }
    }

    return 0;
}