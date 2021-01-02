#include <iostream>

using namespace std;

float determine(int a, float b)
{
    if (a % 5 == 0 && a <= b)
    {
        float total = a + 0.50;
        if (total > b)
        {
            return b;
        }
        else
        {
            return b - total;
        }
    }
    else
    {
        return b;
    }
}


int main(int argc, char **argv)
{
    int amount;
    float bank;
    
    cin >> amount;
    cin >> bank;
    
    float answer = determine(amount, bank);
    cout << answer << endl;
	return 0;
}
