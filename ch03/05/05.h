#pragma once
#include <cstdint>

extern "C" bool CalcSumCubes_a(int64_t* sum, int64_t n);
extern bool     CalcSumCubes_cpp(int64_t* sum, int64_t n);

extern void DisplayResults(int id, int64_t n, int64_t sum1, bool rc1, int64_t sum2, bool rc2);

extern "C" int64_t g_ValMax;