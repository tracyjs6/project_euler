# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_3_and_5(num)

  sum = 0 

  for i in 1..(num-1) do 
  	sum += i if i % 3 == 0 || i % 5 == 0
  end
  sum

end


puts multiples_3_and_5(1000)

# Using times

def multiples_3_and_5_using_times(num)

  sum = 0

  (num).times do |i|
    sum += i if i % 3 == 0 || i % 5 == 0
  end
  sum

end


puts multiples_3_and_5_using_times(1000)
