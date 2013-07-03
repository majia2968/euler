def palindromic

end

def is_palindromic(n)
  digits = n.to_s.size
  arr = Array.new
  if digits.even?
    arr = n.to_s.split('')
    d = arr.size / 2
    a = arr.each_slice(d).to_a
    return true if a[0] == a[1].reverse
  else
    return false
  end
end

p is_palindromic(1221)