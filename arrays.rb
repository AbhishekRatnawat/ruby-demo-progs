friends = Array["kevin", "Karen", "Oscar"]

puts friends

#array parsing

puts friends[0]
puts friends[0,2] #range

pets = Array.new #empty array


#methods
puts friends.length()
puts friends.include? "Karen" #check if element is inside the array

puts friends.reverse()

puts friends.sort() #sort if all elements in the array are same data types


###############
#Hashes in ruby
###############

states = {
	"Pennsylvania" => "PA",
	"New York" => "NY",
	"Oregon" => "OR",
	:washington => "WA",
	1 => "MI"
}


puts states["Oregon"]
puts states[:washington]
puts states[1]