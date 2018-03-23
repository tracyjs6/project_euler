# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# Below finds a palindrome and 2 factors BUT not the largest
# def palidrome_recursive(maxnum, minnum, max1 = maxnum, max2 = maxnum)
#   return "No palidrome" if max2 < minnum
#
#   if (max1 * max2).to_s == (max1 * max2).to_s.reverse
#     return "Palindrome is #{max1 * max2}, and is the product of #{max1} * #{max2}"
#   elsif max1 == minnum
#     maxnum -= 1
#     palidrome_recursive(maxnum, minnum, maxnum, maxnum)
#   else
#     palidrome_recursive(maxnum, minnum, max1 -= 1, max2)
#   end  
#
# end

# My solution in English for the 3 digit product section
#
# find first palindrome
# set divisor to maxnum
# determine if palindrome/divisor is an integer (palindrome % divisor == 0)
#   if it is then we have our result => return
#   if not is palindrome/divisor > maxnum
#     if yes then we need to go to restart loop to find next lower value palindrome
#     if no then we need to decrement divisor by 1 until palindrome/divisor is > maxnum or palidrome/divisor is an int
#       if > maxnum restart loop
#       if int => then have the number

# Works for max num 99, BUT "stack level too deep" error for 999 :-(

def palidrome_recursive(maxnum, minnum, curr_num = maxnum * maxnum, divisor = maxnum)

  return "No palidrome" if curr_num < minnum * minnum

  if curr_num.to_s == curr_num.to_s.reverse
    puts "curr_num: #{curr_num}"
    puts "divisor: #{divisor}"
    puts "curr_num / divisor: #{curr_num / divisor}"
  # We got a palidrome
    if curr_num / divisor > maxnum
      palidrome_recursive(maxnum, minnum, curr_num -=1)
    elsif curr_num % divisor == 0
      return "Palindrome is #{curr_num}, and is the product of #{divisor} * #{curr_num / divisor}"
    else
      palidrome_recursive(maxnum, minnum, curr_num, divisor -= 1)
    end
  else
  # We don't got a palindrome, decrement the number until we do have a palindrome
    palidrome_recursive(maxnum, minnum, curr_num -=1)
  end

end


puts palidrome_recursive(99, 10)
# puts palidrome_recursive(999, 100)



