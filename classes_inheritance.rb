class Chef
	def make_dish
		puts "chef can make a dish"
	end
	def make_salad
		puts "chef can make a salad"
	end
	def make_icecream
		puts "chef can make icecream"
	end
end

class ItalianChef < Chef

	def make_icecream
		puts "chef can make icecream dish"
	end

	def make_pasta
		puts "chef can make pasta"
	end

end


chef = Chef.new()
chef.make_dish
chef.make_icecream

italian_chef = ItalianChef.new()
italian_chef.make_icecream

