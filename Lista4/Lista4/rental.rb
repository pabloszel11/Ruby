module Rental
	def rent
		puts "Which " + @itemsType + " do you want to rent?"
		itemsName = gets.chomp
		i = 0
		while i < @itemsArray.size - 1
			if itemsName == @itemsArray[i].getName && @itemsArray[i].getStatus == 1
				@itemsArray[i].switchStatus
				puts @itemsType + " successfully rented"
				return
			elsif itemsName == @itemsArray[i].getName && @itemsArray[i].getStatus == 0
				puts "That " + @itemsType + " is unavailable"
				return
			end
			i = i + 1
		end
		puts "There's no such " + @itemsType
	end
	
	def returning
		puts "Which " + @itemsType + " do you want to return?"
		itemsName = gets.chomp
		i = 0
		while i < @itemsArray.size - 1
			if itemsName == @itemsArray[i].getName && @itemsArray[i].getStatus == 0
				@itemsArray[i].switchStatus
				puts @itemsType + " successfully returned"	
				return
			elsif itemsName == @itemsArray[i].getName && @itemsArray[i].getStatus == 1
				puts "That " + @itemsType + " wasn't rented"
				return
			end
			i = i + 1
		end		
	end
end
