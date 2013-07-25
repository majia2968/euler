class Integer
  def divisor_sum
    n = self
    return 0 if n == 1
    sum = 1
    sqrt = Math.sqrt(n)
    (2..sqrt).each do |i|
      if n%i == 0
        sum += n/i if i != sqrt
        sum += i
      end
     end
    return sum
  end

  def abundant?
    self < divisor_sum
  end
end


max = 28123
sums = []
abundants = (12..max).select {|n| n.abundant?}
abundants.each do |x|
  abundants.each do |y|
    sum = x + y
    break if sum > max
    sums << sum
  end
end

p ((1..max).to_a - sums).inject(:+)
  
  
