#include <iostream>
using namespace std;

int main()
{
	char *months[12] = {"January", "Febrary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
	int i;
	cout<<"Please input the index number of the month:";
	cin>>i;
	if(i > 0 && i <= 12)
		cout<<months[i - 1]<<endl;
	return 0;
}
