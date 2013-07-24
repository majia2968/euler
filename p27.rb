require 'prime'
arr = []
arr1 = {}
tmp = []
for a in (-999..999) 
  if a.abs.prime?
      for b in 0..999 do
        if b.prime? 
          n = 0
          while true
            m = n**2 + a*n + b
            if m.prime?
              n += 1
            else
              break
            end
          end
          arr << n 
          arr1[n] = a*b
        end
      end
  end
end



p arr.max
p arr1[arr.max]

        
