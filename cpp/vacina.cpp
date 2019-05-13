#include <bits/stdc++.h>

int main() {
    std::string C, D, Z, temp;
    int T, qtd, i;
    
    while (std::cin >> C >> D >> Z >> T) {
        for (qtd = i = 0; i + T <= C.size(); ++i) {
            temp = C.substr(i, T);
            if (!!~D.find(temp) && !!~Z.find(temp)) ++qtd;
        }
        std::cout << qtd << "\n";
    }
    return 0;
}