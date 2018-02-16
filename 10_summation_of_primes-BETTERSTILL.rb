# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Use "Sieve of Eratosthenes" method
# https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
# create array of all numbers to check
# find first number (2), then in increments of that number mark the array false or nil, when done
# find the next prime value (3), then in increments of 3 mark the array false or nil
# and so on until no numbers left

# for primes up to 30
# 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
#
# first number is prime = 2
# start index = 0, increments to update = 2
# => delete index 2, 4, 6, 8, 10, 12 ...
# 2 3 0 5 0 7 0 9 0 11 0 13 0 15 0 17 0 19 0 21 0 23 0 25 0 27 0 29 0
#
# next loop
# first number greater than prev prime is prime = 3
# start index = 1, increments to update = 3
# delete index 4, 7, 10, 13, 16, ...
# 2 3 0 5 0 7 0 0 0 11 0 13 0 0 0 17 0 19 0 0 0 23 0 25 0 0 0 29 0
#
# first number greater than prev prime is prime = 5
# start index = 3, increment to update is 5
# => delete index 8, 13, ...
# 2 3 0 5 0 7 0 0 0 11 0 13 0 0 0 17 0 19 0 0 0 23 0 0 0 0 0 29 0

def summation_of_primes(num)

	# time1 = Time.new
	# start_time = time1.strftime("%H:%M:%S")
	now = Time.now

	arr = []

	for i in 2..(num-1)
		arr.push i
	end

	arr_length = arr.length
	ctr = 0
	curr_prime = arr.find{|x| !x.nil?}
	curr_prime_index = arr.find_index(curr_prime)
	prev_prime = 0
	sum = 0

	while curr_prime
	# while arr.find{|x| !x.nil? && x > prev_prime} 
		while true
			ctr += curr_prime
			break if ctr >= arr_length
			arr[ctr] = nil
		end
		# puts "curr_prime: #{curr_prime}"
		# puts "curr_prime_index: #{curr_prime_index}"
		# puts arr.to_s 
		sum += curr_prime
		prev_prime = curr_prime
		# The curr_prime calc below seems to be the slow part!!!
		curr_prime = arr.find{|x| !x.nil? && x > prev_prime}
		curr_prime_index = arr.find_index(curr_prime)
		ctr = curr_prime_index
		# sleep(3)
	end

	now2 = Time.now
	puts "SECONDS ELAPSED: #{now2 - now}"
	puts "The sum of all primes below #{num} is #{sum}"

end

summation_of_primes(200000)

# completed in 196s

