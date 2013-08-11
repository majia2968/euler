sum = 0

def palindrome(num)
  if num == num.to_s.reverse.to_i
    return true
  else
    return false
  end
end

(1..1000000).each { |i| sum += i if palindrome(i) and palindrome(i.to_s(2).to_i)}

p sum

