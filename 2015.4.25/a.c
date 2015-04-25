#include <stdio.h>

int main()
{
    int init = 4, year;
    char g = '0' - 1, z = 'A' - 1;
    scanf("%d", &year);
    year -= init;
    for(; year >= 0; year--, g++, z++)
    {
        if(g > '9')
            g = '0';
        if(z > 'L')
            z = 'A';
    }
    if(g > '9')
        g = '0';
    if(z > 'L')
        z = 'A';
    printf("%c%c\n", g, z);
    return 0;
}
