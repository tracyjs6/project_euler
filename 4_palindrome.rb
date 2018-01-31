# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# My solution in English for the 3 digit product section
#
# determine if palindrome/divisor is an integer (i%divisor == 0)
# 	if it is then we have our result => return
# 	if not is result > maxnum
# 		if yes then we need to go to the next palindrome
# 		if not then we need to decrement divisor by 1 until palindrome/divisor is > maxnum or divisor = minnum
# 			then we need to reset result = 0 and divisor = maxnum

# 999*999 = 998001
# 100*100 = 10000


def palindrome(maxnum, minnum)

	for i in (maxnum*maxnum).downto(minnum*minnum)
		rev = i.to_s.reverse
		if i.to_s == rev
			divisor = maxnum
			while (i / divisor <= maxnum)
				result = i / divisor
				if i % divisor == 0
					return "Palindrome is #{i}, and is the product of #{divisor} * #{result}"
				else
					divisor -= 1
				end
			end
		end
	end
	
end		

puts palindrome(999, 100)
