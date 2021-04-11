#include <limits.h>

static inline unsigned int log2i(unsigned int n) {
#if defined(__has_builtin) && __has_builtin(__builtin_clz)
    return sizeof (unsigned int) * CHAR_BIT - __builtin_clz(n) - 1;
#else
    return sizeof (unsigned int) * CHAR_BIT - 1; // pessimistic guess
#endif
}

unsigned int fib(unsigned int n) {
    // Two numbers for iteration. At the end, a = F(N) and b = F(N+1).
    unsigned int a = 0, b = 1;
    // log2i is not reliable for n = 0. We know better.
    unsigned int mask = n == 0 ? 0 : 1 << log2i(n);

    for (; mask > 0; mask /= 2) {
        // F(2k)   = F(k) * (2 * F(k+1) + F(k))
        unsigned int new_a = a * (b * 2 - a);
        // F(2k+1) = F(k+1)**2 + F(k)**2
        unsigned int new_b = a * a + b * b;
        a = new_a;  
        b = new_b;
        if (n & mask) {
             new_b = a + b;
             a = b;
             b = new_b;
        }
    }
    return a;
}
