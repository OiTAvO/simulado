#include <bits/stdc++.h>

using namespace std;

int main() {
  int number, rootInt, squaredRoot;
  char bff[50];
  string str, r_str;

  while (scanf(" %d", &number) && number) {
    str = string(itoa(number, bff, 10));
    r_str = string(str.rbegin(), str.rend());
    rootInt = sqrt(number);
    squaredRoot = rootInt * rootInt - number;
    if (!!~str.find(r_str) && !squaredRoot)
      printf("S\n");
    else
      printf("N\n");
  }
  return 0;
}
