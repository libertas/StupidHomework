#include <iostream>
using namespace std;

int revert(char *s)
{
	int len = 0, i;
	char tmp;
	for(; s[len] != '\0'; len++);
	for(i = 0; i < len / 2; i++)
	{
		tmp = s[i];
		s[i] = s[len - 1 - i];
		s[len - 1 - i] = tmp;
	}
	return 0;
}

int main()
{
	char s[100];
	cin>>s;
	revert(s);
	cout<<s<<endl;
	return 0;
}