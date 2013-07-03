arr = Array.new
1.upto(100){|i| arr.push << i}
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