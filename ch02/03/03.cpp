#include "03.h"
#include <iostream>
int main(void) {
    int          rc;
    unsigned int a, count, a_shl, a_shr;
    std::cout << "----- Results for ch02_03 -----\n\n";
    a     = 3110;
    count = 6;
    rc    = ShiftU32_a(&a_shl, &a_shr, a, count);
    DisplayResults("Shift test #1", rc, a, count, a_shl, a_shr);

    a     = 0x00800080;
    count = 4;
    rc    = ShiftU32_a(&a_shl, &a_shr, a, count);
    DisplayResults("Shift test #2", rc, a, count, a_shl, a_shr);

    a     = 0x80000001;
    count = 31;
    rc    = ShiftU32_a(&a_shl, &a_shr, a, count);
    DisplayResults("Shift test #3", rc, a, count, a_shl, a_shr);

    a     = 0x55555555;
    count = 32;
    rc    = ShiftU32_a(&a_shl, &a_shr, a, count);
    DisplayResults("Shift test #4", rc, a, count, a_shl, a_shr);
    return 0;
}