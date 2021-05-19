test: test_datetime test_math

test_math: test.dl math.dl
	souffle -D- `lib_ldscript -lm` test.dl

local_test_math: test.dl math.dl
	PATH=../souffle-32bit/src:$(PATH) ./configure
	PATH=../souffle-32bit/src:$(PATH) souffle -D- `lib_ldscript -lm` test.dl

test_datetime: libfunctors.so
	souffle -D- test_datetime.dl

rosetta: libfunctors.so
	souffle -D- rosetta.dl

movie: libfunctors.so
	souffle -D- movie.dl

libfunctors.so: datetime.cpp
	g++ -shared -fPIC datetime.cpp -o libfunctors.so

datetime.cpp: configure
	./configure

math.dl: configure
	./configure

test.dl: configure
	./configure

configure: configure.ac
	autoconf

clean:
	rm -f test.dl
	rm -f math.dl
	rm -f libfunctors.so
	rm -f datetime.cpp
