factorials = Array.new(10)

(0..9).each do |num|
  factorials[num] = (1..num).inject(1) { |product, value| product * value }
end

sum = 0
for i in (10..2540160)
  tmp_sum = 0
  tmp = i
  while tmp > 0
    di = tmp % 10
    tmp /= 10
    tmp_sum += factorials[di]
  end
  sum += i if tmp_sum == i
end

p sum
