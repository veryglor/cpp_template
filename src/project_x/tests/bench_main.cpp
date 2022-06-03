#include <benchmark/benchmark.h>

void SomeFunction()
{
    constexpr const size_t thousand = 1000; // NOLINT

    for (size_t i = 0; i < thousand; i++) { // NOLINT
        i+=2;                                // NOLINT
    }
}

static void BM_SomeFunction(benchmark::State& state) // NOLINT
{
    // Perform setup here
    for (auto _ : state) { // NOLINT
        // This code gets timed
        SomeFunction();
    }
}
// Register the function as a benchmark
BENCHMARK(BM_SomeFunction); // NOLINT
// Run the benchmark
BENCHMARK_MAIN(); // NOLINT