// gcc -no-pie -o practice practice.c *.S
// ./practice

#include <stdint.h>
#include <stdio.h>


// --- Arithmetic functions ---
extern int64_t add(int64_t a, int64_t b);
extern int64_t sub(int64_t a, int64_t b);
extern int64_t mul(int64_t a, int64_t b);
extern int64_t divInt(int64_t a, int64_t b);
extern int64_t alternativeDivInt(int64_t a, int64_t b);
extern int64_t modInt(int64_t a, int64_t b);
extern int64_t square(int64_t n);

// --- Branching / conditionals ---
extern int64_t isEven(int64_t n);
extern int64_t isPositive(int64_t n);
extern int64_t max2(int64_t a, int64_t b);
extern int64_t min2(int64_t a, int64_t b);
extern int64_t compare3(int64_t a, int64_t b, int64_t c);

// --- Loops ---
extern int64_t sumToN(int64_t n);
extern int64_t factorial(int64_t n);
//extern int64_t fib(int64_t n);

// --- Memory ---
extern void swap(int64_t* a, int64_t* b);
extern void reverseArray(int64_t* arr, int64_t n);



// ------------------------------------------------------------
//                     TEST FRAMEWORK
// ------------------------------------------------------------

static int total_tests = 0;
static int passed_tests = 0;

// ANSI color codes
#define GREEN "\033[32m"
#define RED   "\033[31m"
#define RESET "\033[0m"

// Prints test result
#define EXPECT_EQ(actual, expected) do {                     \
    total_tests++;                                           \
    int64_t _a = (actual);                                   \
    int64_t _e = (expected);                                 \
    if (_a == _e) {                                          \
        printf(GREEN "  [PASS]" RESET " %s == %ld\n", #actual, _e); \
        passed_tests++;                                      \
    } else {                                                 \
        printf(RED "  [FAIL]" RESET " %s == %ld (got %ld)\n", #actual, _e, _a); \
    }                                                        \
} while(0)

// Section headers
#define SECTION(title) \
    printf("\n=== %s ===\n", title);

// ------------------------------------------------------------
//                        MAIN TESTS
// ------------------------------------------------------------

int main(void) {
    SECTION("ARITHMETIC");
    EXPECT_EQ(add(3, 4), 7);
    EXPECT_EQ(sub(10, 3), 7);
    EXPECT_EQ(mul(6, 7), 42);
    EXPECT_EQ(divInt(20, 5), 4);
    EXPECT_EQ(alternativeDivInt(20, 5), 4);
    EXPECT_EQ(modInt(22, 5), 2);
    EXPECT_EQ(square(9), 81);

    SECTION("BRANCHING");
    EXPECT_EQ(isEven(4), 1);
    EXPECT_EQ(isEven(7), 0);
    EXPECT_EQ(isPositive(-3), 0);
    EXPECT_EQ(isPositive(10), 1);
    EXPECT_EQ(max2(3, 7), 7);
    EXPECT_EQ(min2(3, 7), 3);
    EXPECT_EQ(compare3(1, 2, 3), 3);
    EXPECT_EQ(compare3(2, 3, 1), 3);
    EXPECT_EQ(compare3(3, 1, 2), 3);
    EXPECT_EQ(compare3(3, 2, 1), 3);
    EXPECT_EQ(compare3(2, 1, 3), 3);
    EXPECT_EQ(compare3(1, 3, 2), 3);
    EXPECT_EQ(compare3(3, 3, 3), 3);

    SECTION("LOOPS");
    EXPECT_EQ(sumToN(0), 0);
    EXPECT_EQ(sumToN(2), 3);
    EXPECT_EQ(sumToN(5), 15);
    EXPECT_EQ(factorial(0), 1);
    EXPECT_EQ(factorial(1), 1);
    EXPECT_EQ(factorial(5), 120);
    //EXPECT_EQ(fib(2), 1);
    //EXPECT_EQ(fib(10), 55);

    SECTION("MEMORY");
    int64_t x = 3, y = 9;
    swap(&x, &y);
    EXPECT_EQ(x, 9);
    EXPECT_EQ(y, 3);

    int64_t arr[5] = {1,2,3,4,5};
    reverseArray(arr, 5);
    EXPECT_EQ(arr[0], 5);
    EXPECT_EQ(arr[1], 4);
    EXPECT_EQ(arr[4], 1);


    printf("\n----------------------------------------\n");
    printf("Tests passed: %d / %d  ", passed_tests, total_tests);
    if (passed_tests == total_tests)
        printf(GREEN "All tests passed!\n" RESET);
    else
        printf(RED "Some tests failed.\n" RESET);
    printf("----------------------------------------\n");

    return (passed_tests == total_tests) ? 0 : 1;
}
