//WEEK2 W2P1

#include <stdio.h>

#define MAX_SIZE 100

void printArr(int *arr, int size);


int main()
{
    int arr[MAX_SIZE];
    int size;
    int *left = arr;
    int *right;


    printf("Enter size of array: ");
    scanf("%d", &size);

    right = &arr[size - 1];

    printf("Enter elements in array: ");
    while(left <= right)
    {
        scanf("%d", left++);
    }


    printf("\nArray before reverse: ");
    printArr(arr, size);



    left = arr;


    // Loop to reverse array
    while(left < right)
    {
        /*
         * Swap element
         */
        *left    ^= *right;
        *right   ^= *left;
        *left    ^= *right;


        left++;
        right--;
    }


    printf("\nArray after reverse: ");
    printArr(arr, size);


    return 0;
}



void printArr(int * arr, int size)
{
    // Pointer to arr[size - 1]
    int * arrEnd = (arr + size - 1);

    /* Loop till last array element */
    while(arr <= arrEnd)
    {
        printf("%d, ", *arr);

        // Move pointer to next array element.
        arr++;
    }
}