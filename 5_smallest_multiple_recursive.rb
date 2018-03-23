# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


# If divisible by 20, don't need to check 10, 5, 4 or 2
# If divisible by 18, don't need to check 9, 6 or 3
# If divisible by 16, don't need to check 8
# 14 => 7
# Don't need to check 1
# => Only need to check for 11 through 20

# LCM (least common multiple problem): the lcm of 2 integers is the smallest positive integer that is divisible by both.
#   https://en.wikipedia.org/wiki/Least_common_multiple - used section "A method using a table"
#
#      2   2   2   2   3   3   5   7   11  13  17  19
#  11  11  11  11  11  11  11  11  11  1   1   1   1
#  12  6   3   1   1   1   1   1   1   1   1   1   1
#  13  13  13  13  13  13  13  13  13  13  1   1   1
#  14  7   7   7   7   7   7   7   1   1   1   1   1
#  15  15  15  15  15  5   5   1   1   1   1   1   1
#  16  8   4   2   1   1   1   1   1   1   1   1   1
#  17  17  17  17  17  17  17  17  17  17  17  1   1
#  18  9   9   9   9   3   1   1   1   1   1   1   1
#  19  19  19  19  19  19  19  19  19  19  19  19  1
#  20  10  5   5   5   5   5   1   1   1   1   1   1
#
#  => (2 ** 4) * (3 ** 2) * 5 * 7 * 11 * 13 * 17 * 19 = 232792560
#



def smallest_multiple(num, nums = (2..num).to_a, curr = 2, divisors = [])

  curr_used = false
  nums.map! do | elem |
    if elem % curr == 0
      curr_used = true
      elem /= curr
    else
      elem = elem
    end
  end

  if curr >= num
    return divisors.reduce(1, :*)
  elsif curr_used == true
    divisors.push curr
    smallest_multiple(num, nums, curr, divisors)
  else
    smallest_multiple(num, nums, curr + 1, divisors)
  end

end

smallest_multiple(20)


