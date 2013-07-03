def multiples(base1, base2, max)
  sum = 0
  base = base1>base2 ? base1 : base2
  range = max%base > 0 ? max/base : max/base-1
  (1..range).each do |i|
    sum = sum + i*base1 + 1*base2
  end

  return sum

end

#p multiples(3, 10) + multiples(5, 10)
p multiples(3, 5, 10)