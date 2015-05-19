#include <stdio.h>

#define MAP_HEIGHT 11
#define MAP_WIDTH 12
#define START_X 0
#define START_Y 1
#define END_X 10
#define END_Y 10
#define N 50

/*
    1 means +
    2 means /
    3 means \
*/
char maze[MAP_HEIGHT][MAP_WIDTH] = {
                     "000001000000",
                     "111111111110",
                     "000021300003",
                     "000201000000",
                     "001111111000",
                     "001001001000",
                     "001001001002",
                     "001111111110",
                     "000000001000",
                     "000000001000",
                     "000000011110"};


char stack[N][MAP_HEIGHT][MAP_WIDTH] = {0};
int stack_x[N] = {0}, stack_y[N] = {0};
int count = 0;


int push(char m[MAP_HEIGHT][MAP_WIDTH], int x, int y)
{
    int i, j;
    for(i=0; i<MAP_HEIGHT; i++)
    {
        for(j=0; j<MAP_WIDTH; j++)
        {
            stack[count][i][j] = m[i][j];
        }
    }
    stack_x[count] = x;
    stack_y[count] = y;
    count++;
    return 0;
}


int pop(char m[MAP_HEIGHT][MAP_WIDTH], int *x, int *y)
{
    int i, j;
    count--;
    for(i=0; i<MAP_HEIGHT; i++)
    {
        for(j=0; j<MAP_WIDTH; j++)
        {
            m[i][j] = stack[count][i][j];
        }
    }
    *x = stack_x[count];
    *y = stack_y[count];
    return 0;
}


int go(int x, int y)
{
    maze[x][y] += 3; /* 3 is only a magic number */

}


int main()
{
    int i, j;
    for(i=0; i<MAP_HEIGHT; i++)
    {
        for(j=0; j<MAP_WIDTH; j++)
        {

        }
    }
    return 0;
}
