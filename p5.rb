def gcd(a,b)
  while b != 0
    a, b = b, a%b
  end
  return a
end

def lcm(a,b)
  return (a*b) / gcd(a,b)
end

p (1..20).reduce{|c,v| lcm(c,v)}