#include <stdio.h>

int main()
{
    int i, j;
    int number;
    int data[11] = {1, 2, 3, 4, 5, 6, 7, 8, 9 ,10};

    printf("Input the number:");
    scanf("%d", &number);

    for(i = 0; i < 10 && data[i] < number; i++);

    for(j = 9; j >= i; j--)
        data[j + 1] = data[j];

    data[i] = number;

    for(i = 0; i < 11; i++)
        printf("%d:\t%d\n", i + 1, data[i]);

    return 0;
}
