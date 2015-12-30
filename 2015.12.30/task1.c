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

int pre_order(BiTree bt)
{
    if(NULL == bt)
        return 0;
    printf("%c\n", bt->data);
    pre_order(bt->lc);
    pre_order(bt->rc);
    return 0;
}

int in_order(BiTree bt)
{
    if(NULL == bt)
        return 0;

    in_order(bt->lc);
    printf("%c\n", bt->data);
    in_order(bt->rc);

    return 0;
}

int post_order(BiTree bt)
{
    if(NULL == bt)
        return 0;

    post_order(bt->lc);
    post_order(bt->rc);
    printf("%c\n", bt->data);

    return 0;
}

int main()
{
    BiTree t;
    t = init();

    create(t);

    pre_order(t);
    putchar('\n');

    in_order(t);
    putchar('\n');

    post_order(t);
    putchar('\n');
    return 0;
}
