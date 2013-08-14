result = 0;

def is_pandigit?(n)
  s = n.to_s
  return false if s.length != 9
  return false if s.include? '0'
  return false unless s.include? '1'
  return false unless s.include? '2'
  return false unless s.include? '3'
  return false unless s.include? '4'
  return false unless s.include? '5'
  return false unless s.include? '6'
  return false unless s.include? '7'
  return false unless s.include? '8'
  return false unless s.include? '9'
  return true   
end


for i in (9387).downto(9234)
  result = (i.to_s + (2*i).to_s).to_i
  break if is_pandigit?(result)
end

p result
