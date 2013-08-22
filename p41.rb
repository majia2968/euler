require 'mathn'

def pandigitals()
  base, result = [], []
  1.upto(9).each do |n|
    base << n
    result += base.permutation(n).map {|x| x.join.to_i}
  end

  result.sort.reverse
end

p pandigitals.select {|n| n.prime? }.take(1)
