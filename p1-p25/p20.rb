s = 1
(1..100).map{|i| s *= i}
p s.to_s.split("").map(&:to_i).inject(:+)
