result = 0, resultSolutions = 0;
 
for p in (2..1000) 
  numberOfSolutions = 0
  for a in (2..(p/3 - 1)) 
    if(p*(p-2*a) % (2*(p-a)) == 0)
      numberOfSolutions += 1
    end
    a += 1
  end
  if(numberOfSolutions > resultSolutions)
    resultSolutions = numberOfSolutions
    result = p
  end
  p += 2
end

p result

