#include <stdlib.h>
#include "counter.h"

struct Counter * counter(void){
    struct Counter *c = malloc(sizeof(struct Counter));
    c->val = 0;
    return c;
};

void increment(struct Counter *c){
    c->val++;
}

int get_val(struct Counter c){
    return c.val;
}