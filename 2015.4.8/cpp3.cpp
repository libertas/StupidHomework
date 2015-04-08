#include <iostream>
#define N 5
using namespace std;

int main()
{
	struct grades {
		char name[20];
		float s1, s2, s3, aver;
	};
	struct grades g[N];
	int i;
	cout<<"Please input the five student's [name] [s1] [s2] [s3] (sx means the grade of the subject x) in order"<<endl;
	for(i = 0; i < N; i++)
	{
		cin>>g[i].name;
		cin>>g[i].s1;
		cin>>g[i].s2;
		cin>>g[i].s3;
		g[i].aver = (g[i].s1 + g[i].s2 + g[i].s3) / 3;
	}
	struct grades m = g[0];
	for(i = 1; i < N; i++)
	{
		if(g[i].aver>m.aver)
			m=g[i];
	}
	cout<<"The best student:"<<endl;
	cout<<"Name:"<<m.name<<endl;
	cout<<"s1:"<<m.s1<<endl;
	cout<<"s2:"<<m.s2<<endl;
	cout<<"s3:"<<m.s3<<endl;
	return 0;
}