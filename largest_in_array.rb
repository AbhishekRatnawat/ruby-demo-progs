arr=[7,5,6,18,42,19,34,53,20,28]

max=arr[0]

for num in arr
	if num > max
		max = num
	end
end

puts ("maximum number : " + max.to_s)