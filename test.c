#include "counter.h"
#include <assert.h>

int main(int argc, char **argv){
    struct Counter *abc = counter();
    assert(abc);
    assert(get_val(*abc) == 0);
    increment(abc);
    assert(get_val(*abc) == 1);
    return 0; 
}