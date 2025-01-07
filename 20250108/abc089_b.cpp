#include <bits/stdc++.h>

using namespace std;

int main()
{
    int N;
    vector<string> colors;
    string in;

    cin >> N;

    for (int i = 0; i < N; i++)
    {
        cin >> in;
        colors.push_back(in);
    }

    sort(colors.begin(), colors.end());
    auto unique_colors = unique(colors.begin(), colors.end());
    colors.erase(unique_colors, colors.end());

    if (colors.size() == 4)
    {
        cout << "Four" << endl;
    }
    else
    {
        cout << "Three" << endl;
    }
}