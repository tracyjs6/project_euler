# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
#
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)2 = 552 = 3025
#
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_sq_diff(num)
	sum_sq = 0
	sum = 0

	for i in 1..num
		sum_sq += (i*i)
		sum += i
	end

	sq_sum = sum*sum
	diff = sq_sum - sum_sq

	puts "The sum if the first #{num} natural numbers is #{sum_sq}"
	puts "The square if the first #{num} natural numbers is #{sq_sum}"
	puts "The difference between the sum and the square of the first #{num} natural numbers is #{diff}"

end

sum_sq_diff(10)
