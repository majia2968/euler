arr = (1..100).to_a
i = 1
sum = 0
tmp = []
while i<100 do
	arr.delete(i)
	tmp = arr.dup
	tmp.map!{|e| e*i}
	sum += tmp.inject(:+)
	i += 1
end
p sum*2