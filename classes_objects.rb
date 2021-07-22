class Book

	attr_accessor :title, :author, :pages

	def initialize(title, author, pages)
		@title = title
		@author = author
		@pages = pages
	end

end

#book1 = Book.new()
#book1.title = "Harry Potter"
#book1.author = "JK R"
#book1.pages = 400\
#puts book1.title

book2 = Book.new("LOTR","Tolekien", 500 )

puts book2.title