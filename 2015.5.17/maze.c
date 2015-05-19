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
/*
    ATTENTION, the position should be maze[y][x]
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


/* Stack */
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


int nextStep(int orientation, int x, int y)
{
    switch (orientation)
    {
        case 0: go(x+1, y);  break;
        case 1: go(x+1, y-1);  break;
        case 2: go(x, y-1);  break;
        case 3: go(x-1, y-1);  break;
        case 4: go(x-1, y);  break;
        case 5: go(x-1, y+1);  break;
        case 6: go(x, y+1);  break;
        case 7: go(x+1, y+1);  break;
    }
    return 0;
}


void printMap()
{
    int i, j;
    for(i=0; i<MAP_HEIGHT; i++)
    {
        for(j=0; j<MAP_WIDTH; j++)
        {
            printf("%c", maze[i][j]);
        }
        printf("\n");
    }
}


/*  Moving */
int go(int x, int y)
{
    int i;
    if(x==END_X && y==END_Y)
    {
        maze[y][x] = 'E';  /* Mark the arriving */
        printf("\nArriving:\n");
        printMap();
        return 1;  /* Arrive */
    }

    int next[8] = {0};
    /* 0.right, 1.top-right, 2.top, 3.top-left, 4.left, 5.bottom-left, 6.bottom, 7.bottom-right; */
    /* scan */
    /* 0 */
    if(x!=MAP_WIDTH-1 && maze[y][x+1]=='1' && maze[y][x]=='1')
    {
        next[0] = 1;
    }
    /* 1 */
    if(x!=MAP_WIDTH-1 && y!=0 && maze[y-1][x+1]=='2' && maze[y][x]=='2')
    {
        next[1] = 1;
    }
    /* 2 */
    if(y!=0 && maze[y-1][x]=='1' && maze[y][x]=='1')
    {
        next[2] = 1;
    }
    /* 3 */
    if(x!=0 && y!=0 && maze[y-1][x-1]=='3' && maze[y][x]=='3')
    {
        next[3] = 1;
    }
    /* 4 */
    if(x!=0 && maze[y][x-1]=='1' && maze[y][x]=='1')
    {
        next[4] = 1;
    }
    /* 5 */
    if(x!=0 && y!=MAP_HEIGHT-1 && maze[y+1][x-1]=='2' && maze[y][x]=='2')
    {
        next[5] = 1;
    }
    /* 6 */
    if(y!=MAP_HEIGHT-1 && maze[y+1][x]=='1' && maze[y][x]=='1')
    {
        next[6] = 1;
    }
    /* 7 */
    if(x!=MAP_WIDTH-1 && y!=MAP_HEIGHT-1 && maze[y+1][x+1]=='3' && maze[y][x]=='3')
    {
        next[7] = 1;
    }

    /* Make marks on the route */
    if(maze[y][x]!='0')
        maze[y][x] += 3;  /* 3 is only a magic number */
    else
        return -1;  /* Error: tring to walk on walls */

    int posibleWays = 0;
    for(i=0; i<8; i++)
        if(next[i]==1)
            posibleWays++;
    if(posibleWays==1)
    {
        for(i=0; next[i]!=1; i++);
        nextStep(i, x, y);
    }
    else if(posibleWays>1 && posibleWays<8)
    {
        for(i=0; i<8; i++)
        {
            if(next[i]==1)
            {
                push(maze, x, y);
                nextStep(i, x, y);
                pop(maze, &x, &y);
            }
        }
    }
    else
        return -2;  /* Error: no way to go */
}


int main()
{
    go(START_X, START_Y);
    return 0;
}
