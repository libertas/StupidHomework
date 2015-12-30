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

int print_value_depth(BiTree bt, unsigned long depth)
{
    if(NULL == bt)
        return 0;
    printf("%ld %c\n", depth, bt->data);
    print_value_depth(bt->lc, depth + 1);
    print_value_depth(bt->rc, depth + 1);
    return 0;
}

int main()
{
    BiTree t;
    t = init();

    printf("Input the tree:");
    create(t);

    print_value_depth(t, 1);

    return 0;
}
