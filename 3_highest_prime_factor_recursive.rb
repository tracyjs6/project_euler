# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

# This does not take into account numbers only divisible by 1 and themselves => primes, but not factors!!! 
# This is the case if only ever goes through the else branch, but can't work out how 


def highest_prime_factor_recursive(num, divisor = 2)

  return "Not a valid number" if num  < 2
  return num if divisor * divisor > num

  if num % divisor == 0
    highest_prime_factor_recursive((num/divisor), divisor)
  else
    highest_prime_factor_recursive(num, divisor + 1)
  end

end

highest_prime_factor_recursive(13195)
highest_prime_factor_recursive(600851475143)


