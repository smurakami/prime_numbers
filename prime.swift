var primes : Int[] = []
for i in 2..1 {
  var isPrime = true
  for p in primes {
    if i % p == 0 {
      isPrime = false
      break
    }
  }
  if isPrime {
    println(i)
    primes.append(i)
  }
}
