#include "ch02_01.h"
#include <iostream>
void DisplayResults(int a, int b, int c, int d, int r1, int r2) {
  constexpr char nl = '\n';
  std::cout << "----- Results for ch02_01 -----\n";
  std::cout << "a =  " << a << nl;
  std::cout << "b =  " << b << nl;
  std::cout << "c =  " << c << nl;
  std::cout << "d =  " << d << nl;
  std::cout << "r1 =  " << r1 << nl;
  std::cout << "r2 =  " << r2 << nl;
  std::cout << nl;
}