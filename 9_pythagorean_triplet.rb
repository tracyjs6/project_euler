# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a*a + b*b = c*c
# 	For example, 3*3 + 4*4 = 9 + 16 = 25 = 5*5.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# For full example given
# a + b + c = 12
# (a*a) + (b*b) = (c*c) = 25
#
# 	=> c = (Math.sqrt((a ** 2) + (b ** 2)))
# 	=> (a + b + Math.sqrt((a ** 2) + (b ** 2))) = 12

# For problem to solve
# a + b + c = 1000
# (a ** 2) + (b ** 2) = (c ** 2)



def pythag_triplet(num)

	a = 1
	b = 2

	while true
		if (a + b + Math.sqrt((a ** 2) + (b ** 2))) < num
			b += 1
			# puts "HERE1"
		elsif (a + b + Math.sqrt((a ** 2) + (b ** 2))) == num 
			if (Math.sqrt((a ** 2) + (b ** 2))) > a && (Math.sqrt((a ** 2) + (b ** 2))) > b
				# puts "HERE2"
				break
			else # NOT SURE IF THIS BRANCH IS NECESSARY as it not used in either of the examples of 12 or 1000
				a += 1
				b = a + 1
				# puts "HERE3"
			end
		else
			a += 1
			b = a + 1
			# puts "HERE4"
		end
	end
	puts "a is #{a}, b is #{b}"
	puts "c is #{(Math.sqrt((a ** 2) + (b ** 2)))}"
	puts "The product of a, b and c is #{a*b*(Math.sqrt((a ** 2) + (b ** 2)))}"

end

pythag_triplet(1000)

