arr = (2..2000000).to_a
index = 0 
while arr[index]**2 <= arr.last
  arr = arr[index]
  arr = arr.select {|x| x == arr || x%arr != 0}
  index +=1
end

p arr
