#include <bits/stdc++.h>

using namespace std;

int main()
{
    int n, k;

    cin >> n >> k;

    int answer = 1;

    for (int i = 0; i < n; i++)
    {
        if (answer <= k)
        {
            answer *= 2;
        }
        else
        {
            answer += k;
        }
    }

    cout << answer << endl;
}