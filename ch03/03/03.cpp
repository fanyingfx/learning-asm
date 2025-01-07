#include "03.h"
#include <iostream>
int main() {
    std::cout << "----- Results for Ch03_03 -----\n";
    g_SumPrimes_a = 0;
    for (int i = -1; i < g_NumPrimes_a + 1; i++) {
        int32_t v1 = -1, v2 = -1, v3 = -1, v4 = -1;
        int32_t rc = MemAddressing_a(i, &v1, &v2, &v3, &v4);

        DisplayResults(i, rc, v1, v2, v3, v4);
    }

    std::cout << "\ng_SumPrimes_a = " << g_SumPrimes_a << '\n';
    return 0;
}