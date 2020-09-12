#include<bits/stdc++.h>
using namespace std;

int main()
{
	long long int n,sum,f;
	cin>>n;
	sum = (n)*(n+1)/2;
	vector<int> v1,v2;
	
	if(sum%2!=0)
	{
		cout<<"NO"<<endl;
	}
	
	else
	{
		
		cout<<"YES"<<endl;
		f = sum/2;
		v1.insert(v1.end(),n);
		f = f-n;
		
		if(f==0)
		{
			while(n)
			{
				n--;
				while(n)
				{
					v2.insert(v2.end(),n);
					n--;
				}
			}
		}
		
		else
		{
		while(n)
		{
			n--;
			
			if(f-n>=0&&n>=1)
			{
				f = f-n;
			  v1.insert(v1.end(),n);
		    }
		    
		    else if(n>=1)
		    {
				v2.insert(v2.end(),n);
			}
		    
		}
	}
	
  }
  
	
	cout<<v1.size()<<endl;
	for(int i=0;i<v1.size();i++)
	{
		cout<<v1[i]<<" ";
	}
	
	cout<<endl;
	cout<<v2.size()<<endl;
	for(int i=0;i<v2.size();i++)
	{
		cout<<v2[i]<<" ";
	}
}
