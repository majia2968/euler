i = 1
sum = i
step = 2
while i < 1001**2
  4.times {
    i += step
    sum += i
  }
  step += 2
end
p sum
