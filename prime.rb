#!/usr/bin/env ruby
primes = []
num = 2
while true
  is_prime = true
  for p in primes
    if num % p == 0
      is_prime = false
      break
    end
  end
  if is_prime
    primes.push num
    printf "%d ", num
  end
  num += 1
end
