# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.


# 2 = odd example
# 3 % 2 != 0 =>  prime
# 4 % 2 == 0 => not prime
# 5 % 2 != 0, 5 % 3 != 0, if not divisible by 2, then not divisible by 4 => prime
# 6 % 2 == 0 => prime
# 7 % 2 != 0, 7 % 3 != 0, !4, 7 % 5 != 0, !6 => prime
# 8 % 2 == 0 => not prime
# 9 % 2 != 0, 9 % 3 == 0 => not prime
# 10 % 2 == 0, not prime
# 11

# don't try to divide by multiples of primes already found
# 2 => !4, !6, !8, ...
# 3 => !9, !15, !21 
# 5 => !25, ...


def summation_of_primes(num)

	orig_arr = []
	primes_arr = []
	sum = 0

	for i in 2..(num-1)
		orig_arr.push i
	end


	while orig_arr.length != 0
		# new_arr = []
		first_val = orig_arr[0]
		is_prime = true
		for i in 2..(first_val-1)
			is_prime = false if first_val % i == 0
		end
		if is_prime
			sum += first_val 
			primes_arr.push first_val
			# below too slow, copying entire array to new aray then copying back
			# orig_arr.collect {|x| new_arr.push x if x % first_val != 0}
			# orig_arr = new_arr
			# INSTEAD loop through arr finding the values that match and delete them
			# orig_arr.each {|x| orig_arr.delete_at(orig_arr.find_index(x)) if x % first_val == 0}
			orig_arr.each {|x| if x % first_val == 0
				orig_arr.delete_at(orig_arr.find_index(x))
				puts "Deleting #{x}"
				end}
		else
			orig_arr.delete_at(orig_arr.find_index(first_val))
		end
		puts "ARR LENGTH: #{orig_arr.length}"
	end

	#puts primes_arr.to_s

	"The sum is #{sum}"

end

puts summation_of_primes(2000000)

