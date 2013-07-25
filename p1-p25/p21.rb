def proper_div(n)
  sum = 0
  1.upto(n-1) do |i|
    sum += i if n%i == 0   
  end
  return sum
end

sum = 0 
1.upto(9999) do |x|
  y = proper_div(x)
    sum += x if proper_div(y) == x && x!=y
end

puts sum
