#pragma once
#include <cstdint>

extern "C" int32_t SignedMin1_a(int32_t a, int32_t b, int32_t c);
extern "C" int32_t SignedMin2_a(int32_t a, int32_t b, int32_t c);
extern "C" int32_t SignedMax1_a(int32_t a, int32_t b, int32_t c);
extern "C" int32_t SignedMax2_a(int32_t a, int32_t b, int32_t c);

void DisplayResults(const char* s1, int32_t a, int32_t b, int32_t c, int32_t result);
