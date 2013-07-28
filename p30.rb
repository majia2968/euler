sum = 0
(2..500000).each do |i|
    sum += i if i == i.to_s.split("").map {|n| n.to_i ** 5}.inject(:+)
end
p sum
