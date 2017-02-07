def sort(array,howManyElements)
	i = 0
	while i < howManyElements - 1
		minIndex = i
		j = i + 1
		while j < howManyElements
			if array[j][3] < array[minIndex][3]
				minIndex = j
			elsif  array[j][3] == array[minIndex][3]
				if array[j][2] < array[minIndex][2]
					minIndex = j
				elsif array[j][1] == array[minIndex][1]
					if array[j][4] < array[minIndex][4]
						minIndex = j
						elsif array[j][4] == array[minIndex][4]
						if array[j][5] < array[minIndex][5]
							minIndex = j
						end
					end
				end
			end
			j = j + 1
		end
		if minIndex != i
			name = array[i][0]
			yr = array[i][3]
			mon = array[i][2]
			day = array[i][1]
			hour = array[i][4]
			mins = array[i][5]
			array[i][0] = array[minIndex][0]
			array[i][3] = array[minIndex][3]
			array[i][2] = array[minIndex][2]
			array[i][1] = array[minIndex][1]
			array[i][4] = array[minIndex][4]
			array[i][5] = array[minIndex][5]			
			array[minIndex][3] = yr
			array[minIndex][2] = mon
			array[minIndex][1] = day
			array[minIndex][4] = hour
			array[minIndex][5] = mins
			array[minIndex][0] = name
		end
		i = i + 1
	end
	return array
end
def addEvent(array, arrayCounter)
	puts "Podaj nazwe wydarzenia"
	name = gets.chomp
	puts "Podaj dzien"
	day = gets.chomp.to_i
	puts "Podaj miesiac"
	month = gets.chomp.to_i
	puts "Podaj rok"
	year = gets.chomp.to_i
	puts "Podaj godzine"
	hour = gets.chomp.to_i
	puts "Podaj minuty"
	minutes = gets.chomp.to_i
	
	if arrayCounter != 0
		if array[arrayCounter - 1][3] == year && array[arrayCounter - 1][2] == month && array[arrayCounter - 1][1] == day && array[arrayCounter - 1][4] - 1 == hour && array[arrayCounter - 1][5] < minutes
			print "Wydarzenie koliduje z innym\n"
			return false
		elsif array[arrayCounter - 1][3] == year && array[arrayCounter - 1][2] == month && array[arrayCounter - 1][1] == day && array[arrayCounter - 1][4] + 1 == hour && array[arrayCounter - 1][5] > minutes
			print "Wydarzenie koliduje z innym\n"
			return false
		elsif array[arrayCounter - 1][3] == year && array[arrayCounter - 1][2] == month && array[arrayCounter - 1][1] == day && array[arrayCounter - 1][4] == hour
			print "Wydarzenie koliduje z innym\n"
			return false
		end
	end
	array << [name,day,month,year,hour,minutes]
	return true
	
end
	
def printAllEvents(array,arrayCounter)
	dataArray = array
	i = 0
	while i < arrayCounter
		print dataArray[i][0]
		print " w dniu "
		print dataArray[i][1]
		print "."
		print dataArray[i][2]
		print "."
		print dataArray[i][3]
		print " "
		print dataArray[i][4]
		print ":"
		print dataArray[i][5]
		print "\n"
		i = i + 1
	end
end

arrayCounter = 0
dataArray = Array.new
loop do
	print "Co chcesz zrobic?\n"
	print "1) Dodaj wydarzenie\n"
	print "2) Wyswietl wydarzenia\n"
	print "3) Wyjdz\n"
	input = gets.chomp
	
	case input
	when "1"
		if addEvent(dataArray,arrayCounter) == true
			arrayCounter = arrayCounter + 1
		end
		sort(dataArray, arrayCounter)
	when "2"
		printAllEvents(dataArray,arrayCounter)
	when "3"
		break
	end
		
end
	
