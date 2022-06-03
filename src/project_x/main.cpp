#include <absl/container/flat_hash_map.h>
#include <tbb/parallel_for.h>

int main()
{
    auto* x = new int[100]; // NOLINT
    x[0] = 7;               // NOLINT
    return 0;               // NOLINT
}