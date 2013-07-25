#using recursion
timer_start = Time.now
$h = Hash.new
def calc_seq(n,s) 
  if $h[n]
    return $h[n] + s - 1
  elsif n == 1
    return s
  elsif n & 1 == 0
    return calc_seq(n/2,s+1)
  else
    return calc_seq(3*n+1,s+1)
 end
end

def calc_seq_cache(n)
  $h[n] = calc_seq(n,1)
end
(1..1000000).each do |i|
  calc_seq_cache i
end
puts $h.invert[$h.values.max]

timer_now = Time.now

p timer_now - timer_start

# using loop a little bit fast than recursion
timer_start = Time.now
$h = Hash.new

def calc_seq(n,s)
	while true
		if $h[n]
			return $h[n] + s - 1
			break
		elsif n == 1
			return s
			break
		elsif n & 1 == 0
			n = n/2
			s += 1
		else
			n = 3*n + 1
			s += 1
		end
	end
end

def calc_seq_cache(n)
  $h[n] = calc_seq(n,1)
end

(1..1000000).each do |i|
  calc_seq_cache i
end			

puts $h.invert[$h.values.max]

timer_now = Time.now

p timer_now - timer_start