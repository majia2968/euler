def fib(n)
  curr = 0
  succ = 1
  sum = 0
  arr = Array.new
  n.times do |i|
    curr, succ = succ, curr + succ
    sum += curr if curr%2 == 0
    break if curr > 4000000
  end
 
  return sum
end
 
p fib(40)