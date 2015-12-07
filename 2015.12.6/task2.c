#include <stdio.h>
#include <stdlib.h>

struct lnode
{
    int data;
    struct lnode *next;
};

int list_create(struct lnode *head, int *d, int length)
{
    int i;
    struct lnode *p;

    p = head;

    for(i = 0; i < length; i++) {
        p->next = calloc(1, sizeof(struct lnode));
        if(p->next == NULL)
            return -1;

        p = p ->next;
        p->data = *(d + i);
        p->next = NULL;
    }

    return 0;
}

int list_delete(struct lnode *head, int d)
{

    return 0;
}

int print_list(struct lnode *p)
{
    while(p->next != NULL)
    {
        p = p->next;
        printf("%d\n", p->data);
    }

    return 0;
}

int main()
{
    int user_data[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9 ,10};
    struct lnode *h = calloc(1, sizeof(struct lnode));;

    if(0 != list_create(h, user_data, 10))
    {
        printf("Error: cannot allocate memory!\n");
        return -1;
    }

    print_list(h);

    return 0;
}
