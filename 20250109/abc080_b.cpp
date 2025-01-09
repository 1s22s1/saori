#include <bits/stdc++.h>

using namespace std;

int main()
{
    string N;

    cin >> N;
    int div = 0;

    for (char ch : N)
    {
        div += ch - '0';
    }

    if (stoi(N) % div == 0)
    {
        cout << "Yes" << endl;
    }
    else
    {
        cout << "No" << endl;
    }
}