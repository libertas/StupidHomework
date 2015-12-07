#include <stdio.h>
#include <stdlib.h>

struct lnode
{
    int data;
    struct lnode *next;
};

int main()
{
    int i;
    int user_data[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9 ,10};
    struct lnode H;
    struct lnode *p;

    for(i = 0; i < 10; i++) {
        struct lnode *p = malloc(sizeof(struct lnode));
        if(p == NULL)
            return -1;

        p->data = user_data[i];

    }

    return 0;
}
