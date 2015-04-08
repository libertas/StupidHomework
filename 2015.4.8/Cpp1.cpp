#include <iostream>
using namespace std;

int revert(int a[3][3])
{
	int b[3][3], i, j;
	for(i = 0; i < 3; i++)
		for(j = 0; j < 3; j++)
			b[i][j] = a[i][j];
	for(i = 0; i < 3; i++)
		for(j = 0; j < 3; j++)
			a[i][j] = b[j][i];
	return 0;
}

int main()
{
	int a[3][3] = {1, 2, 3, 4, 5, 6, 7, 8, 9}, i, j;
	revert(a);
	for(i = 0; i < 3; i++)
	{
		for(j = 0; j < 3; j++)
			cout<<a[i][j]<<' ';
		cout<<endl;
	}
	return 0;
}