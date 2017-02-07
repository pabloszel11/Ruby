def czyPierwsza(n)

	if n < 2
		return false
	end

	i = 2
	while i * i <= n
		if n % i == 0
			return false
		end
		i = i + 1
	end
	return true
end

def pierwsza(n)
	i = 2
	tab = Array.new
	while i <= n
		if czyPierwsza(i) == true
			tab << i
		end
		i = i + 1
	end
	puts tab
end

pierwsza(25)
