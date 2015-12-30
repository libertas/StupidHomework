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

unsigned long get_node_depth(BiTree bt, char d, unsigned long depth)
{
    unsigned long found_depth;

    if(NULL == bt)
        return 0;
    else if(bt->data == d)
        return depth;

    found_depth = get_node_depth(bt->lc, d, depth + 1);
    if(0 != found_depth)
        return found_depth;

    found_depth = get_node_depth(bt->rc, d, depth + 1);
    if(0 != found_depth)
        return found_depth;

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

    printf("\nThe depth of the data:%ld\n", get_node_depth(t, data, 1));

    return 0;
}
