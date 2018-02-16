# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# My solution in words
# prime number: is only divisible by 1 and itself
# go through all the numbers from 2 through 2 million
# try to divide by increments of 1


def summation_of_primes(num)

	sum = 2 # sum of all the primes
	ctr = 3 # current number counter, increase by 1 for each loop through the while clause

	while ctr < num
		is_prime = true
		for i in 2..(ctr-1)
			# puts "CTR: #{ctr}"
			# puts "I: #{i}"
			is_prime = false if ctr % i == 0
		end
		if is_prime
			sum += ctr
			# puts "The current sum is #{sum}"
		end
		ctr += 1
	end	

	"The sum is #{sum}"

end

puts summation_of_primes(10)

