.PHONY: setup clean test test_math local_test_math test_datetime rosetta movie clean libfunctors

ifeq ($(OS),Windows_NT)
    SONAME = so
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        SONAME = so
    endif
    ifeq ($(UNAME_S),Darwin)
        SONAME = dylib
    endif
endif


setup: libfunctors math.dl test.dl

# Testing and examples

test: test_datetime test_math

test_math: test.dl math.dl
	souffle -D- `lib_ldscript -lm` test.dl

local_test_math: test.dl math.dl
	PATH=../souffle-32bit/src:$(PATH) ./configure
	PATH=../souffle-32bit/src:$(PATH) souffle -D- `lib_ldscript -lm` test.dl

test_datetime: libfunctors
	souffle -D- test_datetime.dl

rosetta: libfunctors
	souffle -D- rosetta.dl

movie: libfunctors
	souffle -D- movie.dl

# Configure for 32/64 bit and compile

libfunctors: datetime.cpp
	g++ -shared -fPIC datetime.cpp -o libfunctors.$(SONAME)

datetime.cpp: configure
	@./configure

math.dl: configure
	@./configure

test.dl: configure
	@./configure

configure: configure.ac
	autoconf

clean:
	@rm -f test.dl
	@rm -f math.dl
	@rm -f libfunctors.$(SONAME)
	@rm -f datetime.cpp
