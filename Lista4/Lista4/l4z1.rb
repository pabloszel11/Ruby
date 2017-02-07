require_relative 'rental'

class Item
	def initialize(name)
		@itemName = name
		@itemStatus = 1 # 1 if available, 0 if rented
	end
	
	def getName
		return @itemName
	end
	
	def switchStatus
		if @itemStatus == 1
			@itemStatus = 0
		else
			@itemStatus = 1
		end
	end
	
	def getStatus
		return @itemStatus
	end
end

class Book < Item
	def initialize(title, author)
		@itemName = title
		@bookAuthor = author
		@itemStatus = 1
	end	
end

class Library < Book
	include Rental
	
	def initialize
		@itemsArray = Array.new
		@itemsType = "book"
	end
	
	def add
		puts "Book's title: "
		bTitle = gets.chomp
		puts "Book's author: "
		bAuthor = gets.chomp
		book = Book.new(bTitle,bAuthor)
		@itemsArray << book
	end
	

end

lib = Library.new
lib.add
lib.add
lib.add
lib.rent
lib.rent
lib.returning
lib.returning
