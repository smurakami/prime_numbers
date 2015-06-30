let
	num = 2
	_primes = Int64[]

	while true
	  if isprime(num)
	    push!(_primes, num)
	    @printf "%d," num
	  end
	  num += 1
	end
end
