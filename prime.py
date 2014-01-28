primes = []
num = 2
while True:
    is_prime = True
    for p in primes:
        if num % p == 0:
            is_prime = False
            break
    if is_prime:
        primes.append(num)
        print num,
    num += 1
