#Solution 1

p (0..9).to_a.permutation(10).to_a[999999].join


#Solution 2 : much efficient  
def factorial(n)
  return 1 if n.zero?
  1.upto(n).inject(:*)
end

arr1 = (0..9).to_a
p_arr = []
n = 9
s = 1000000
for m in (0..9)
  for i in (0..arr1.size-1)
    if factorial(arr1.size-1)*(i+1) >= s
      p_arr << arr1[i]
      s -=  factorial(arr1.size-1)*(i)
      arr1.delete_at(i)
      break
    end
  end
end

p p_arr
  
