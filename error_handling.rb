arr=[1,2,3,4,5,6]

begin
	#arr["a"]
	num = 10/0
rescue TypeError => e
	puts e
rescue ZeroDivisionError => e
	puts e
end