# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# My solution in English for the 3 digit product section
#
# find first palindrome
# set divisor to maxnum
# determine if palindrome/divisor is an integer (palindrome % divisor == 0)
# 	if it is then we have our result => return
# 	if not is palindrome/divisor > maxnum
# 		if yes then we need to go to restart loop to find next lower value palindrome
# 		if no then we need to decrement divisor by 1 until palindrome/divisor is > maxnum or palidrome/divisor is an int
#       if > maxnum restart loop
#       if int => then have the number


# 999*999 = 998001
# 100*100 = 10000


def palindrome(maxnum, minnum)

  for i in (maxnum*maxnum).downto(minnum*minnum)
    if i.to_s == i.to_s.reverse
      divisor = maxnum
      while (i / divisor <= maxnum)
        if i % divisor == 0
          return "Palindrome is #{i}, and is the product of #{divisor} * #{i / divisor}"
        else
          divisor -= 1
        end
      end
    end
  end
  
end 

puts palindrome(999, 100)
