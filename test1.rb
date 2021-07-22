name = "John" #string
age = 35      #integer
price = 10.15 #float
flag = true   #boolean
amount = nil  #null/no value
puts ("Once was man in Russia long ago " + name)
puts ("His age was " + String(age))
puts name
puts name.upcase() #uppercase
puts name.downcase() #lowercase
puts name.strip() #dealing with whitespaces
puts name.length() #length of String
puts name.include? "oh" #true if "oh" is part of string
puts name[0] #indexing
puts name[0,3] #within the range
puts name.index("o")

#numbers
puts 10%3 #modulus
puts 1+2 #add
puts 2*1 #multiply
puts 4**2 #power
puts ("this is to change a number to string " + age.to_s)
puts price.round()

#getting input from user in ruby

puts "enter your name: "
name = gets  #gets.chomp() to get rid of new character
puts ("hello " + name)
