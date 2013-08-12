require 'prime'

(11..1000).each do |i|
  next unless i.prime?
  
end

def truncatable(i)
  tmp = i.to_s
  while tmp.length > 0
    arr = tmp.split("")
    arr.shift
    p tmp
    if arr.join.to_i.prime?
      tmp = arr.join
    elsif arr.join.to_i.prime? and tmp.length == 1
      return true
      break
    else
      return false
    end
  end
end
p truncatable(3797)
