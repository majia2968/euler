require 'prime'

# def triangular_number(n)
# 	tol = n(n+1)/2
# end

# prime_number = []
# power = []
# def divisors(n)
# 	arr = n.prime_division
# 	arr.each do |a|
# 		prime_number << a[0]
# 		power << a[1]
# 	end

# end

# p divisors(1000)

timer_start = Time.now
 
# http://mathschallenge.net/index.php?section=faq
#    &ref=number/number_of_divisors
# If n=48, then prime factors are 3^1 2^4, and divisor
# count is calculated by adding 1 to each power and then
# multiplying the results together.
# For 48, we have (1+1)(4+1) = 10
class Integer
  def divisor_count
    sum = 1
    # prime_division return two dimensional array.
    # for 48, [3,1], [2,4] is the result
    self.prime_division.each do |x|
      sum *= (x[1] + 1)
    end
    sum
  end
end
 
# Define the counter and first triangle number
i, triangle_number = 1, 1
while(triangle_number.divisor_count <= 500)
  i += 1
  triangle_number += i
end 
 
puts triangle_number
 
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"