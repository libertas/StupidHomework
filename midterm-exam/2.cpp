#include <iostream>
using namespace std;

int f(int *a, int n, int m)
{
	if(m >n || m < 0 || n <= 0)
		return -1;  // m > n 或 m < 0 或 n <= 0，则说明给出的参数有错，返回1
	int *a1 = new int[n];  // 声明一个新的长度为n的数组
	int i;
	for(i = 0; i < n; i++)  // 复制a到a1
		a1[i] = a[i];
	for(i = 0; i < m; i++)  // 把最后m个移到前面来
		a[i] = a1[n - m + i];  
	for(i = 0; i < n - m; i++)  // 把前面的数字顺序向后移m个位置
		a[m + i] = a1[i];
	return 0;  // 返回0代表没有错误
}

int main()
{
	int i;
	int m, n;
	int *a;
	cout<<"Input n:";
	cin>>n;
	if(n > 0)
		a = new int[n];
	else
	{
		cout<<"Error: Wrong n"<<endl;
		return 1;
	}
	cout<<"Input m:";
	cin>>m;
	cout<<"Input "<<n<<" numbers"<<endl;
	for(i = 0; i < n; i++)
		cin>>a[i];
	if(f(a, n, m) == 0)  // 无错
	{
		for(i = 0; i < n; i++)  // 输出转换后的数组
			cout<<a[i]<<' ';
	}
	else  // 有错
	{
		cout<<"Error: Wrong Argument!"<<endl;
		return 1;
	}
	return 0;
}