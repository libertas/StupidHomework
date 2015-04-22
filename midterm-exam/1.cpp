#include <iostream>
using namespace std;

int main()
{
	int i, n = 1;
	for(i = 0; i < 9; i++, n = 2 * (n + 1));
	// 第九天吃完后还剩下一个桃子，第九天吃之前还剩下 2 * (1 + 1) 个桃子，以此类推
	cout<<n<<endl;
	return 0;
}