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

unsigned long get_total(BiTree bt)
{
    if(bt == NULL)
        return 0;

    return get_total(bt->lc) + get_total(bt->rc) + 1;
}

unsigned long get_one_child_num(BiTree bt)
{
    int n = 0;
    if(bt == NULL)
        return 0;
    if(NULL != bt->lc)
        n++;
    if(NULL != bt->rc)
        n++;

    if(1 == n)
        return get_one_child_num(bt->lc) + get_one_child_num(bt->rc) + 1;
    else
        return get_one_child_num(bt->lc) + get_one_child_num(bt->rc);
}

int main()
{
    BiTree t;
    t = init();

    printf("Input the tree:");
    create(t);

    printf("Total:%ld\n", get_total(t));
    printf("Nodes who has only one child:%ld\n", get_one_child_num(t));
    return 0;
}
