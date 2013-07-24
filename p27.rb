require 'prime'
arr = []
(-999).upto(999) do |a|
  (-999).upto(999) do |b|
    n = 0
    while true
      if (n**2 + a*n + b).prime?
        n += 1
      else
        break
      end
    end
   arr << n 
  end
end

p arr.max
        
