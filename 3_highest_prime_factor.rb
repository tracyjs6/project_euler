# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

# https://en.wikipedia.org/wiki/Primality_test - for understanding of why don't have to specifically test for primes


def factor_primes(num)

  return "Not a valid number" if num < 2

  for divisor in 2..(num - 1)
    while num % divisor == 0 
      (divisor * divisor > num) ? (return num) : (num /= divisor)
      # puts "The divisor is #{divisor}"
      # puts "The new num is #{num}"
    end
  end
  puts "only divisible by 1 and itself"
end

# puts factor_primes(13195)
puts factor_primes(600851475143)



