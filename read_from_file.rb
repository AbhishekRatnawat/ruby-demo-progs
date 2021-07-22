
#reading a file
#File.open("test_file.txt", "r") do |file|
	#puts file.read()
	#puts file.readline() #read only 1st line
	#puts file.readline() #read only 2nd line
#	for line in file.readlines()
#		puts line
#	end
#end

#file = File.open("test_file.txt", "r")
#puts file.read()
#file.close()

#Write in a file
#file = File.open("test_file1.txt", "w")
#file.close()


#append mode
file = File.open("test_file1.txt", "a")
file.write("emp5, ", "CA, ", "90000")
file.close()


#r+ mode

File.open("test_file1.txt", "r+") do |file|

	file.readline()
	file.write("Overriden text")
end