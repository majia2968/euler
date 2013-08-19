s = ""
product = 1
(0..200000).each do |i|
  s << i.to_s
end
i = 1000000
while i>1
  product *= s[i].to_i
  i /= 10
end
p product
