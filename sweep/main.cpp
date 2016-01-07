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
    unsigned int width;
    unsigned int mines;
    struct map_node **mine_map;
    bool running;

public:
    SweepMine(const unsigned int width, unsigned int mines)
    {
        unsigned int i, j;
        this->width = width;
        this->mines = mines;
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

    char find_number(const unsigned int i, const unsigned int j)
    {
        unsigned int result = 0;

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
        unsigned int i, j;
        char tmp_map[width][width] = {0};

        for(i = 0; i < width; i++) {
            for(j = 0; j < width; j++) {
                if(mine_map[i][j].has_flag) {
                    tmp_map[i][j] = 'P';
                } else if(print_mine && mine_map[i][j].has_mine) {
                    tmp_map[i][j] = 'M';
                } else if(mine_map[i][j].is_known) {
                    tmp_map[i][j] = (char)find_number(i, j) + 48;
                } else {
                    tmp_map[i][j] = '*';
                }
            }
        }

        for(i = 0; i < width; i++) {
            for(j = 0; j < width; j++) {
                cout<<tmp_map[i][j]<<'\t';
            }
            cout<<endl;
        }
    }

    void run()
    {
        unsigned int i, j;
        unsigned int unflagged_mines = mines;
        char cmd;

        while(this->running) {
            print_map(false);

            cout<<"Please input the command(f for flag and x in general):";
            cin>>cmd;

            switch(cmd) {
                default:
                    cout<<"Wrong command!"<<endl;
                    continue;
                case 'f':
                    cout<<"i:";
                    cin>>i;
                    cout<<"j:";
                    cin>>j;

                    if(i < width && j < width) {
                        mine_map[i][j].has_flag = !mine_map[i][j].has_flag;
                    } else {
                        cout<<"The number is too large"<<endl;
                        continue;
                    }
                    break;
                case 'x':
                    cout<<"i:";
                    cin>>i;
                    cout<<"j:";
                    cin>>j;

                    if(i >= width || j >= width) {
                        cout<<"The number is too large"<<endl;
                        continue;
                    }

                    if(mine_map[i][j].has_flag == false)
                        mine_map[i][j].is_known = true;
                    else
                        cout<<"The position is flagged!"<<endl;
                    break;
            }

            for(i = 0; i < width; i++) {
                for(j = 0; j < width; j++) {
                    if(mine_map[i][j].has_mine) {
                        if(mine_map[i][j].is_known) {
                            this->running = false;
                            cout<<"You are lost!"<<endl;
                        }

                        if(mine_map[i][j].has_flag) {
                            unflagged_mines--;
                            if(unflagged_mines == 0) {
                                this->running = false;
                                cout<<"You are win!"<<endl;
                            }
                        }
                    }
                }
            }
        }

        print_map(true);
        cout<<"The game is end"<<endl;
    }
};

int main()
{
    unsigned int width, mines;
    SweepMine *s;
    cout<<"Starting the game"<<endl;
    cout<<"Please input the width of the map:";
    cin>>width;
    cout<<"Please input the number of mines:";
    cin>>mines;
    s = new SweepMine(width, mines);
    s->run();
    return 0;
}
