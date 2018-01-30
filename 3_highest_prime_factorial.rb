# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?


def factorial_primes(num)

  for divisor in 2..(num-1)
    while num % divisor == 0
        num = num / divisor
        puts "The divisor is #{divisor}"
        puts "The new num is #{num}"
        if divisor * divisor > num
          return num
        end
    end
  end
end

puts factorial_primes(600851475143)
