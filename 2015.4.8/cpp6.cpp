#include <iostream>
#include <stdio.h>
using namespace std;

struct st {
	int alphabets, numbers, spaces, others;
};

struct st cal(char *s)
{
	struct st result = {0};
	int i;
	for(i = 0; s[i] != '\0'; i++)
	{
		if(s[i] <= 'Z' && s[i] >= 'A' || s[i] <= 'z' && s[i] >= 'a')
			result.alphabets++;
		else if(s[i] <= 9 && s[i] >= 0)
			result.numbers++;
		else if(s[i] == ' ')
			result.spaces++;
		else
			result.others++;
	}
	return result;
}

int main()
{
	char s[100];
	struct st r;
	gets(s);
	r = cal(s);
	cout<<"Alphabets:"<<r.alphabets<<endl;
	cout<<"Numbers:"<<r.numbers<<endl;
	cout<<"Spaces:"<<r.spaces<<endl;
	cout<<"Others:"<<r.others<<endl;
	return 0;
}
