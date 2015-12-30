#include <stdio.h>
#include <stdlib.h>

typedef struct bitnode
{
    char data;
    struct bitnode *lc, *rc;
} BiTNode, *BiTree;

BiTree init()
{
    BiTNode *bt;
    bt = (BiTNode *) malloc(sizeof(BiTNode));
    bt->lc = NULL;
    bt->rc = NULL;
    return bt;
}

char create(BiTree bt)
{
    char c;

    c = getchar();

    if('\n' == c) {
        return '\n';
    } else if('*' == c) {
        return '*';
    } else {
        bt->data = c;
    }

    bt->lc = malloc(sizeof(BiTNode));
    c = create(bt->lc);

    if('\n' == c) {
        return '\n';
    } else if('*' == c) {
        free(bt->lc);
        bt->lc = NULL;
    }

    bt->rc = malloc(sizeof(BiTNode));
    c = create(bt->rc);

    if('\n' == c) {
        return '\n';
    } else if('*' == c) {
        free(bt->rc);
        bt->rc = NULL;
    }

    return 0;
}

int print_ancestor(BiTree bt, char d)
{
    if(NULL == bt)
        return 0;

    if(bt->data == d)
        return d;

    if(print_ancestor(bt->lc, d) == d || print_ancestor(bt->rc, d) == d) {
        printf("%c\n", bt->data);
        return d;
    }

    return 0;
}

int main()
{
    char data;
    BiTree t;
    t = init();

    printf("\nInput the tree:");
    create(t);

    printf("\nInput the data of the node:");
    data = getchar();
    if('\n' == data)
        data = getchar();

    print_ancestor(t, data);

    return 0;
}

