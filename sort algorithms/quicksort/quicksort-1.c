#include <stdio.h>
#include <stdbool.h>

// function proto-types
void outputData();
void quicksort(int left, int right);
int partition(int left, int right);
void swap(int loc1, int loc2);

#define SIZE 5 // number of elements in the array
int run = 1;
int pivotPos = 0;
char data[] = {'E', 'D', 'C', 'B', 'A'};

int main()
{

    outputData();

    // sort all the data in the array
    quicksort(0, SIZE - 1);

    //outputData( );
}

// Sort the data in the array in locations [left..right]
// inclusive into numeric order using Quick Sort

void quicksort(int left, int right)
{
    printf("\nRun #%d, L = %d, R = %d, P = %d\n", run, left, right, pivotPos);
    run++;

    // BASE CASE - the problem is trivially small
    if (right <= left)
        return; // this region is sorted

    // GENERAL CASE - divide and conquer
    else
    {

        // divide the array region into the "small" keys on
        // the left side, and the "big" keys on the right side.
        // pivotPos is the location of the pivot key after
        // the partition is complete
        pivotPos = partition(left, right);
        printf("did a partition, state after partition is:\n");
        outputData();

        // solve the two subproblems recursively:
        printf("call left\n");
        quicksort(left, pivotPos - 1); // sort left sub-problem
        printf("finished a left\n");
        

        printf("call right\n");
        quicksort(pivotPos + 1, right); // sort right sub-problem
        printf("finished a right\n");
    }
}

// partition the region of the array from [left..right],
// inclusive so that all the "small" keys appear to the
// left of all the "big" keys
int partition(int left, int right)
{

    int pivotKey = data[left];

    // all keys strictly left of position i are "small" (<= pivot key)
    // all keys sritctly right of position j are "big" (> pivot key)
    int i = left + 1;
    int j = right;

    while (i <= j)
    {

        if (data[i] <= pivotKey)
            i++;

        else if (data[j] > pivotKey)
            j--;

        else
        {
            swap(i, j);
            i++;
            j--;
        }
    }
    // swap the pivotKey into its final sorted position
    swap(left, j);

    return (j); // return the pivot Position
}

// swap the values in the array in the
// two indicated locations
void swap(int loc1, int loc2)
{
    char temp = data[loc1];
    data[loc1] = data[loc2];
    data[loc2] = temp;
}

// output the contents of the given array
void outputData()
{
    //printf("\n");
    for (int i = 0; i < SIZE; i++)
        printf("%c ", data[i]);
    printf("\n");
}
