def slownie(n)
	if n > 9999
		puts "Liczba spoza zakresu!"
		return
	end
	counter = 0
	counterForArrayOfWords = 0
	array = []
	while n >= 1
		array[counter] = n % 10
		n = n / 10
		counter = counter + 1
	end
	counter = counter - 1
	arrayOfWords = []
	while counter >= 0
		case counter
			when 3
				case array[counter]
					when 1
						print "tysiac "
						counter = counter - 1
					when 2
						print "dwa tysiace "
						counter = counter - 1
					when 3
						print "trzy tysiace "
						counter = counter - 1
					when 4
						print "cztery tysiace "
						counter = counter - 1
					when 5
						print "piec tysiecy "
						counter = counter - 1
					when 6
						print "szesc tysiecy "	
						counter = counter - 1
					when 7
						print "siedem tysiecy "
						counter = counter - 1
					when 8
						print "osiem tysiecy "
						counter = counter - 1
					when 9
						print "dziewiec tysiecy "
						counter = counter - 1
				end
			when 2
				case array[counter]
					when 1
						print "sto "
						counter = counter - 1
					when 2
						print "dwiescie "
						counter = counter - 1
					when 3
						print "trzysta "
						counter = counter - 1
					when 4
						print "czterysta "
						counter = counter - 1
					when 5
						print "piecset "
						counter = counter - 1
					when 6
						print "szescset "	
						counter = counter - 1
					when 7
						print "siedemset "
						counter = counter - 1
					when 8
						print "osiemset "
						counter = counter - 1
					when 9
						print "dziewiecset "
						counter = counter - 1
				end
			when 1
				case array[counter]
					when 1
						if array[counter - 1] == 1
							print "jedenascie"
							counter = counter - 2
						elsif array[counter - 1] == 2
							print "dwanascie"
							counter = counter - 2
						elsif array[counter - 1] == 3
							print "trzynascie"
							counter = counter - 2
						elsif array[counter - 1] == 4
							print "czternascie"
							counter = counter - 2
						elsif array[counter - 1] == 5
							print "pietnascie"
							counter = counter - 2
						elsif array[counter - 1] == 6
							print "szesnascie"
							counter = counter - 2
						elsif array[counter - 1] == 7
							print "siedemnascie"
							counter = counter - 2
						elsif array[counter - 1] == 8
							print "osiemnascie"
							counter = counter - 2
						elsif array[counter - 1] == 9
							print "dziewetnascie"
							counter = counter - 2
						elsif array[counter - 1] == 0
							print "dziesiec"
							counter = counter - 2
						end
					when 2
						print "dwadziescia "
						counter = counter - 1
					when 3
						print "trzydziesci "
						counter = counter - 1
					when 4
						print "czterdziesci "
						counter = counter - 1
					when 5
						print "piecdziesiat "
						counter = counter - 1
					when 6
						print "szescdziesiat "
						counter = counter - 1
					when 7
						print "siedemdziesiat "
						counter = counter - 1
					when 8
						print "osiemdziesiat "
						counter = counter - 1
					when 9
						print "dziewiecdziesiat "
						counter = counter - 1
				end
			when 0
				case array[counter]
					when 1
						print "jeden"
						counter = counter - 1
					when 2
						print "dwa"
						counter = counter - 1
					when 3
						print "trzy"
						counter = counter - 1
					when 4
						print "cztery"
						counter = counter - 1
					when 5
						print "piec"
						counter = counter - 1
					when 6
						print "szesc"
						counter = counter - 1
					when 7
						print "siedem"
						counter = counter - 1
					when 8
						print "osiem"
						counter = counter - 1
					when 9
						print "dziewiec"
						counter = counter - 1
				end
		end
	end
	
	puts
end

def factorial(n)
	if n == 0
		return 1
	else
		return factorial(n-1) * n
	end
end
def newton(n,k)
	return factorial(n)/ (factorial(k) * factorial(n-k))
end

def pascal(n)
	row = 0
	
	while row <= n
		print row
		print "\t"
		for i in 0..row
			print newton(row,i)
			print " "
		end
		row = row + 1
		puts
	end
end
slownie(2526)
pascal(10) 

