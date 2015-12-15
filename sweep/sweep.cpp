#include <iostream>
using namespace std;

class SweepMine
{
private:
    int width;
    char **mine_map;

public:
    SweepMine(int width)
    {
        int i, j;
        this->width = width;
        mine_map = new char *[width];

        for(i = 0; i < width; i++) {
            mine_map[i] = new char[width];
        }

        for(i = 0; i < width; i++) {
            for(j = 0; j < width; j++) {
                mine_map[i][j] = '*';
            }
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
};

int main()
{
    SweepMine *s = new SweepMine(9);
    s->print_map();
    return 0;
}
