#include <iostream>
#include <cstdlib>
using namespace std;

struct map_node {
    bool has_mine;
    bool is_known;
    bool has_flag;
};

class SweepMine
{
private:
    int width;
    struct map_node **mine_map;
    bool running;

public:
    SweepMine(int width, int mines)
    {
        int i, j;
        this->width = width;
        mine_map = new struct map_node *[width];

        for(i = 0; i < width; i++) {
            mine_map[i] = new struct map_node[width];
        }

        for(i = 0; i < width; i++) {
            for(j = 0; j < width; j++) {
                mine_map[i][j].has_mine = false;
                mine_map[i][j].has_flag = false;
                mine_map[i][j].is_known = false;
            }
        }

        if(mines >= width * width)
            mines = width * width - 1;

        while(mines--) {
            mine_map[rand() % width][rand() % width].has_mine = true;
        }

        this->running = true;
    }

    unsigned int find_number(const unsigned int i0, const unsigned int j0)
    {
        unsigned int result = 0;
        unsigned int i, j;

        if(mine_map[(i + 1) % width][j].has_mine) {
            result++;
        }

        if(mine_map[(i - 1) % width][j].has_mine) {
            result++;
        }

        if(mine_map[i][(j + 1) % width].has_mine) {
            result++;
        }

        if(mine_map[i][(j - 1) % width].has_mine) {
            result++;
        }

        if(mine_map[(i + 1) % width][(j + 1) % width].has_mine) {
            result++;
        }

        if(mine_map[(i + 1) % width][(j - 1) % width].has_mine) {
            result++;
        }

        if(mine_map[(i - 1) % width][(j + 1) % width].has_mine) {
            result++;
        }

        if(mine_map[(i - 1) % width][(j - 1) % width].has_mine) {
            result++;
        }

        return result;
    }

    void print_map(bool print_mine)
    {
        int i, j;
        for(i = 0; i < width; i++) {
            for(j = 0; j < width; j++) {
                if(mine_map[i][j].has_flag) {
                    cout<<"P\t";
                } else if(mine_map[i][j].is_known) {
                    cout<<find_number(i, j)<<'\t';
                } else {
                    if(print_mine && mine_map[i][j].has_mine) {
                        cout<<"M\t";
                        continue;
                    }
                    cout<<"*\t";
                }
            }
            cout<<endl;
        }
    }

    void run()
    {
        unsigned int i, j;
        char cmd;

        while(this->running) {
            print_map(false);

            cout<<"Please input the command(F for flag and x in general):";
            cin>>cmd;

            switch(cmd) {
                default:
                    cout<<"Wrong command!"<<endl;
                    continue;
                case 'F':
                    cout<<"i:";
                    cin>>i;
                    cout<<"j:";
                    cin>>j;

                    mine_map[i][j].has_flag = true;
                    break;
                case 'x':
                    cout<<"i:";
                    cin>>i;
                    cout<<"j:";
                    cin>>j;

                    //mine_map[i][j].is_known = true;
                    break;
            }
        }
    }
};

int main()
{
    SweepMine *s = new SweepMine(9, 9);
    s->run();
    return 0;
}
