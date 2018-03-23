# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def smallest_multiple(num)

  curr = num

  loop do
    state = true
    for i in num.downto(1)
      if curr % i != 0
        state = false
        break
      end
    end
    if state == true
      return curr
    else
      curr += num
    end
  end

end

puts smallest_multiple(20)




