#include <stdio.h>
#include <stdlib.h>

struct lnode
{
    int data;
    struct lnode *next;
};

int print_list(struct lnode *h)
{
    struct lnode *p = h;
    while(p->next != NULL) {
        p = p->next;
        printf("%c ", p->data);
    }
    putchar('\n');
    return 0;
}

#define STACK_LEN 100
struct stack
{
    char data[STACK_LEN];
    int top;
};

char pop(struct stack *s)
{
    int tmp;
    if(s->top > -1)
    {
        tmp = s->top;
        s->top--;
        return s->data[tmp];
    }
    return 0;
}

int push(struct stack *s, char data)
{
    if(s->top >= STACK_LEN - 1)
        return -1;

    s->top++;
    s->data[s->top] = data;

    return 0;
}

struct stack *init_stack()
{
    struct stack *s;
    s = malloc(sizeof(struct stack));
    if(NULL == s)
    {
        printf("Error: cannot allocate memory!\n");
        exit(-1);
    }
    s->top = -1;
    return s;
}

int main()
{
    char data;
    struct lnode *h = calloc(1, sizeof(struct lnode));
    struct lnode *p = h;
    struct stack *st = init_stack();

    printf("Please input data(ending with #):");
    while(1) {
        data = getchar();
        if('#' == data)
            break;

        p->next = calloc(1, sizeof(struct lnode));
        if(NULL == p->next)
        {
            printf("Error: cannot allocate memory!\n");
            return -1;
        }

        p = p->next;
        p->data = data;
    };

    p = h;
    while(NULL != p->next) {
        p = p->next;
        push(st, p->data);
    }

    print_list(h);

    p = h;
    while(NULL != p->next) {
        p = p->next;
        p->data = pop(st);
    }

    print_list(h);

    return 0;
}
