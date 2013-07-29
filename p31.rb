coins = [1, 2, 5, 10, 20, 50, 100, 200]
goal = 200
ways = Array.new
ways << 1
200.times do
  ways << 0
end
coins.each do |coin|
  coin.upto(goal) do |x|
    ways[x] += ways[x-coin]
  end
end
p ways[goal]
