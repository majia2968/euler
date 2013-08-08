require 'prime'

sum = 0
(1..1000000).each do |i|
  sum += 1 if (1..(i.to_s.length)).all? { |j|i.to_s.split('').rotate(j).join('').to_i.prime?}
end

p sum
