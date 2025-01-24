$(info $(SHELL))
CC=gcc
CFLAGS=-std=c99 -Wall

# additional flags for gcov
TESTFLAGS=-fprofile-arcs -ftest-coverage

all: test

test: test.c counter.h counter.c
	# build the test
	$(CC) $(CFLAGS) $(TESTFLAGS) -o test test.c counter.c

	# run the test, will generate test-counter.gcna and test-counter.gcno
	./test

	# compute how test is covering counter.c
	gcov -c -p test-counter
clean:
	rm -f *.o test *.gcov *.gcda *.gcno


# CC= gcc
# CFLAGS= -std=c99 -Wall

# #this part is additional for gcov
# TESTFLAGS=-fprofile-arcs -ftest-coverage

# all: test

# test: test.c counter.h counter.c
# #build the test
# 		$(CC) $(CFLAGS) $(TESTFLAGS) -o test test.c counter.c

# 		# run the test, generate test-counter.gcna test-counter.gcno 
# 		./test

# 		# compute how test is covering counter.c
# 		gcov -c -p test-counter

# clean:
# 	rm -f *.o test *.gcov *.gcda *.gcno