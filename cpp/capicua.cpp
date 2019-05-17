#include <bits/stdc++.h>

using namespace std;

int main () {
    int n, raiz;
    string str, r_str, result = "";
    
    while (cin >> str && str[0] != '0') {
        r_str = string(str.rbegin(), str.rend());
	if (!!~str.find(r_str)) {
            n = atoi(str.c_str());
            raiz = sqrt(n);
            cout << (n == raiz * raiz ? "S\n" : "N\n");
        } else cout << "N\n";
    }
    return 0;
}
            