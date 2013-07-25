def sieve_eratosthenes(n)
	arr = (0..n).map {|e| true}
	arr[0], arr[1] = false, false
	for i in (2..n)
		if i <= n
			j = i*i
			while j <= n
				arr[j] = false
				j += i
			end
		end
		i += 1
	end
	return (0..n).find_all{|e| arr[e] == true}.inject(:+)
end


p sieve_eratosthenes(2000000)



