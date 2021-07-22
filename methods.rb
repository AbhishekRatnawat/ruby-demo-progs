def sayhi(name, age)

	puts ("hello user " + name + "your age is: " + age.to_s)
	return 0, "Mike"
end

ret = sayhi("Mike", 10)

puts ret[0]

puts ret[1]

