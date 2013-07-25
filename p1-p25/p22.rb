$name = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

arr = Array.new

File.open("names.txt", "r").each_line do |line|
  line.split(",").each {|i| arr << i.gsub('"', "")}
end

def name_value(name)
  sum_n = 0
  name.split("").each do |n|
    sum_n += $name.index(n) + 1
  end
  return sum_n
end

$h = Hash.new
def name_cache(arr)
  arr.sort.each do |n|
    $h[n] = name_value(n) unless $h[n]
  end
end

name_cache(arr)

sum = 0
arr.sort.each_with_index do |n, i|
  sum += $h[n] * (i+1)
end

p sum
