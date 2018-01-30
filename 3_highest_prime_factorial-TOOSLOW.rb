# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

#BELOW CODE TAKES WAAAAAY TOO LONG WITH THE NUMBER GIVEN - HAD TO FIND A BETTER WAY THAN LOOPING THROUGH THE PRIMES => see 2_highest_prime_factorial.

def factorial_primes(num)

  ctr = num/2

  while ctr > 1
    if num%ctr == 0
    # if here then ctr is a factorial, now need to determine if this value is also a prime number
    is_prime = true
      for d in 2..(ctr - 1)
        if (ctr % d) == 0
          is_prime = false
        end
      end
      if is_prime
        puts "#{ctr} is a factorial of #{num} and the highest prime number"
        break
      end
    end
    ctr -= 1
  end

end

puts factorial_primes(13195)



