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
    struct lnode *p = head, *tmp;
    while(NULL != p->next) {
        if(d == p->next->data) {
            tmp = p->next;
            p->next = tmp->next;
            free(tmp);
            return 0;
        }
        p = p->next;
    }
    return -1;
}

int print_list(struct lnode *p)
{
    while(p->next != NULL) {
        p = p->next;
        printf("%d\t", p->data);
    }
    putchar('\n');
    return 0;
}

int main()
{
    int i, data;
    int *user_data, length;
    struct lnode *h = calloc(1, sizeof(struct lnode));;

    printf("Input the length of the list:");
    scanf("%d", &length);
    user_data = calloc(length, sizeof(int));
    if(NULL == user_data) {
        printf("Error: cannot allocate memory!\n");
        return -1;
    }
    else {
        for(i = 0; i < length; i++) {
            printf("Please input user_data[%d]:", i);
            scanf("%d", user_data + i);
        }
    }

    if(0 != list_create(h, user_data, length)) {
        printf("Error: cannot allocate memory!\n");
        return -1;
    }

    print_list(h);

    printf("Please input which one you want to delete:");
    scanf("%d", &data);

    list_delete(h, data);
    print_list(h);

    return 0;
}
