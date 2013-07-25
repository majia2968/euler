def isqrt(n)
  x = Math.sqrt(n)
  if x.to_s.split(".")[1].size>2
    return false
  else
    return x
  end
end
 
for a in (1..500)
  for b in (2..500)
    if isqrt(a*a+b*b)
      if a + b + isqrt(a*a+b*b).to_int == 1000
        p a*b*isqrt(a*a+b*b).to_int
      end
    end
  end
end