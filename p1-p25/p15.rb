#The grid can be expressed as Pascal’s Triangle:

class Integer
  def choose(k)
    (self-k+1 .. self).inject(:*) / (2 .. k).inject(:*)
  end
end

puts 40.choose(20)