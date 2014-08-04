#!/bin/zsh
i=1
primes=()

while let ++i
do
    # floats in arithmetic expressions are not supported in bash
    i_sqrt=$((i ** 0.5))
    for p in ${primes[@]}
    do
        if ((i % p == 0 ))
        then
            continue 2
        fi
        if ((p > i_sqrt))
        then
            break
        fi
    done
    echo -n "$i "
    primes+=($i)
done
