Ruby

require 'prime'
i = 1
j = 1

loop do
  i += 1
  j += 1 if i.prime?
  break unless j<10002
end

p i