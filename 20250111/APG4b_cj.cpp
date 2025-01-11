#include <bits/stdc++.h>

using namespace std;

int main()
{
    int N;
    cin >> N;

    vector<int> vec(N);

    for (int i = 0; i < N; i++)
    {
        cin >> vec.at(i);
    }

    int sum = 0;
    for (int i = 0; i < N; i++)
    {
        sum += vec.at(i);
    }

    int avg = sum / N;

    for (int i = 0; i < N; i++)
    {
        if (vec.at(i) < avg)
        {
            cout << avg - vec.at(i) << endl;
        }
        else
        {
            cout << vec.at(i) - avg << endl;
        }
    }
}