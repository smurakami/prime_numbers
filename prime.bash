#!/bin/bash
i=1
primes=()

while let ++i
do
    for p in ${primes[@]}
    do
        if ((i % p == 0))
        then
            continue 2
        fi
    done
    echo "$i "
    primes+=($i)
done
