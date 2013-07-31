sum = []
1.upto(5000) do |i|
  1.upto(99) do |j|
    pan = i.to_s + j.to_s + (i*j).to_s
    if pan.length == 9 and pan.each_char.sort.join == "123456789"
      sum <<  i*j
    end
  end
end
p sum.uniq.inject(:+)
