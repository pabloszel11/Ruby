class Person
	def initialize(name,number,group)
		@p_name = name
		@p_number = number
		@p_group = group
	end
	
	def p_name
		@p_name
	end
	
	def p_number
		@p_number
	end
	
	def p_group
		@p_group
	end
end

def addPerson(notepad)
	groupArray = Array.new
	puts "Podaj imie"
	name = gets.chomp
	puts "Podaj numer"
	number = gets.chomp
	puts "Podaj grupy (end by zakonczyc)"
	while (group = gets.chomp) != "end"
		groupArray << group
	end
	
	p = Person.new(name,number,groupArray)
	notepad << p
end

def searchForDuplicates(str,array)
	i = 0
	while i < array.length
		if str == array[i]
			return true
		end
		i = i + 1
	end
	return false
end

def getAllGroups(notepad)
	i = 0
	groupsArray = Array.new
	while i < notepad.length
		j = 0 
		while j < notepad[i].p_group.length
			if searchForDuplicates(notepad[i].p_group[j],groupsArray) == false
				groupsArray << notepad[i].p_group[j]
			end
			j = j + 1
		end
		i = i + 1 
	end
	
	i = 0
	while i < groupsArray.length
		puts groupsArray[i]
		i = i + 1
	end
end

def searchByGroup(notepad)
	puts "Podaj nazwe grupy"
	groupMembers = Array.new
	g = gets.chomp
	i = 0
	while i < notepad.length
		j = 0
		while j < notepad[i].p_group.length
			if g == notepad[i].p_group[j]
				groupMembers << notepad[i]
			end
		j = j + 1
		end
		i = i + 1
	end
	puts "Osoby nalezacy do tej grupy: "
	i = 0
	while i < groupMembers.length
		puts groupMembers[i].p_name
		i = i + 1
	end
end

def searchByName(notepad)
	puts "Podaj imie osoby ktora chcesz wyszukac"
	name = gets.chomp
	i = 0
	while i < notepad.length
		if name == notepad[i].p_name
			print "Imie: "
			puts notepad[i].p_name
			print "Numer: "
			puts notepad[i].p_number
			print "Grupy: "
			puts notepad[i].p_group
			break
		end
		i = i + 1 
	end
	if i == notepad.length
		puts "Nie znaleziono takiej osoby"
	end
end

def printAll(notepad)
	puts notepad[0].p_name
end

notepad = Array.new
loop do
	puts "Co chcesz zrobic?"
	puts "1) Dodaj osobe"
	puts "2) Wyszukaj po imieniu"
	puts "3) Pokaz wszystkie grupy"
	puts "4) Wyszukaj osoby nalezace do danej grupy"
	puts "5) Wyjdz"
	input = gets.chomp
	
	case input
	when "1"
		addPerson(notepad)
	when "2"
		searchByName(notepad)
	when "3"
		getAllGroups(notepad)
	when "4"
		searchByGroup(notepad)
	when "5"
		break
	end
end
