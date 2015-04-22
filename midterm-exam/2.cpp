#include <iostream>
using namespace std;

int f(int *a, int n, int m)
{
	if(m >n || m < 0 || n <= 0)
		return -1;  // m > n �� m < 0 �� n <= 0����˵�������Ĳ����д�����1
	int *a1 = new int[n];  // ����һ���µĳ���Ϊn������
	int i;
	for(i = 0; i < n; i++)  // ����a��a1
		a1[i] = a[i];
	for(i = 0; i < m; i++)  // �����m���Ƶ�ǰ����
		a[i] = a1[n - m + i];  
	for(i = 0; i < n - m; i++)  // ��ǰ�������˳�������m��λ��
		a[m + i] = a1[i];
	return 0;  // ����0����û�д���
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
	if(f(a, n, m) == 0)  // �޴�
	{
		for(i = 0; i < n; i++)  // ���ת���������
			cout<<a[i]<<' ';
	}
	else  // �д�
	{
		cout<<"Error: Wrong Argument!"<<endl;
		return 1;
	}
	return 0;
}