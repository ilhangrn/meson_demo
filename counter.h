// A basic test code

struct Counter {
    int val;
};

struct Counter * counter(void);
void increment(struct Counter *c);
int get_val(struct Counter c);
