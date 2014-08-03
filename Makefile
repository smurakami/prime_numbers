compile         = .c .hs
sources_all     = $(wildcard prime.*)
sources_compile = $(filter $(addprefix %,$(compile)),$(sources_all))
binaries        = $(patsubst prime.%,prime-%,$(sources_compile))

all: $(binaries)

%-hs: %.hs
	ghc -o $@ --make $^

%-c: %.c
	$(CC) -Wall -O3 -o $@ $^

clean:
	rm -f $(binaries)
	rm -f *.hi *.o
