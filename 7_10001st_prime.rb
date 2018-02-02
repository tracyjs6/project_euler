# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10001st prime number?


def is_prime?(num)

	# Already counting 2 as prime
	curr = 3
	ctr = 2

	while ctr < num
		curr += 2
		is_prime = true
		for i in 2.upto(curr-1)
			if curr % i == 0
				is_prime = false
			end
		end
		if is_prime
			ctr += 1
		end
	end
	return curr
end

puts is_prime?(10001)


