def sayhi(*servers)

	#puts ("hello user " + name + "your age is: " + age.to_s)
	srvs = servers.map { |s| s.split(',') }.flatten
	puts ("servers: #{srvs}")
	#return "Don", "Mike"
end

#name1, name2  = sayhi("Mike", 10)

servers = "web-21,web-31,web-41"
#puts name1
sayhi(servers)
#puts name2
