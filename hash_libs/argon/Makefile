CC=g++
CPPFLAGS_REF=-lpthread -std=c++11 -O2
CPPFLAGS_AESNI=-m64 -maes -mavx -lpthread -std=c++11 -O3
#LIBS=-pthread -lcrypto -lm

TARGETS=argon.a

SOURCES_ARGON=\
	Argon-Reference/aes.cpp \
	Argon-Reference/Argon-Reference.cpp \
	Argon-Reference/blake2b-ref.cpp

SOURCES_ARGON_AESNI=\
	Argon-Optimized/Linux-AES-NI/aes.cpp \
	Argon-Optimized/Linux-AES-NI/Argon-Optimized.cpp \
	Argon-Optimized/Linux-AES-NI/blake2b.cpp \
	Argon-Optimized/Linux-AES-NI/genkat.cpp

default: $(TARGETS)

argon.a: $(SOURCES_ARGON:.cpp=.o)
	ar rcs $@ $^

argon-aesni.a: $(SOURCES_ARGON_AESNI:.cpp=.o)
	ar rcs $@ $^

Argon-Reference/%.o: Argon-Reference/%.cpp
	$(CC) $(CPPFLAGS_REF) $< -c -o $@

Argon-Optimized/%.o: Argon-Optimized/%.cpp
	$(CC) $(CPPFLAGS_AESNI) $< -c -o $@

clean:
	rm -f Argon-Reference/*.o Argon-Optimized/Linux-AES-NI/*.o $(TARGETS)

.PHONY: clean
