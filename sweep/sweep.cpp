#include <iostream>
using namespace std;

/*
    ? unknown
    Y flag
    * mine
*/

class SweepMine
{
private:
    int width;
    char **mine_map;

public:
    SweepMine(int width, int mines)
    {
        int i, j;
        this->width = width;
        mine_map = new char *[width];

        for(i = 0; i < width; i++) {
            mine_map[i] = new char[width];
        }

        for(i = 0; i < width; i++) {
            for(j = 0; j < width; j++) {
                mine_map[i][j] = '?';
            }
        }

        if(mines > width * width)
            mines = width * width;

        while(mines--) {
            mine_map[rand(width)][rand(width)] = '*';
        }

    }

    void print_map()
    {
        int i, j;
        for(i = 0; i < width; i++) {
            for(j = 0; j < width; j++) {
                cout<<mine_map[i][j]<<' ';
            }
            cout<<endl;
        }
    }

    void run()
    {
    }
};

int main()
{
    SweepMine *s = new SweepMine(9);
    s->print_map();
    return 0;
}
