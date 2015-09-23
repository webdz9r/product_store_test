module CategoriesHelper

	def display_tree(names)
		string = ""
		if names.length == 0 
			string = "Root Category"
		else
			names.each { |n| string <<  "#{n} > " }
			string = string[0...-3]
		end

		return string

	end
end
