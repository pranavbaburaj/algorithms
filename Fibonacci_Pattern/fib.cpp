#include <iostream>
#include <vector>

using namespace std;

int main()
{
  int n;
  cin >> n;
  vector<int> seq;
  
  int i = 0;
  
  while (i < n)
  {
    if(i == 0 || i == 1){ seq.push_back(i) }
    else {  
      seq.push_back(seq[i - 1] + seq[i - 2]);
    }
    i++:
  }
  
  cout << seq.back() << endl;
  return 0;
{
