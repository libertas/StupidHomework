#include <iostream>
using namespace std;

int main()
{
	int i, n = 1;
	for(i = 0; i < 9; i++, n = 2 * (n + 1));
	// �ھ�������ʣ��һ�����ӣ��ھ����֮ǰ��ʣ�� 2 * (1 + 1) �����ӣ��Դ�����
	cout<<n<<endl;
	return 0;
}