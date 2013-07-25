  seq = [1, 2]
  count = 3
  while seq.last.to_s.length < 1000
    seq << seq[-1] + seq[-2]
    count += 1
  end

  puts count
