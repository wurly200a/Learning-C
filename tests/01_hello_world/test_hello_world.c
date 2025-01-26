#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>

#include "hello_world.h"

static void test_hello_world(void **state) {
    (void) state; // Unused
    int result = print_hello_world();

    assert_int_equal(result, 1);
}

int main(void) {
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_hello_world),
    };
    return cmocka_run_group_tests(tests, NULL, NULL);
}
