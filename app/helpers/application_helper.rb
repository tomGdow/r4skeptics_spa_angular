module ApplicationHelper

	def simple_pluralize arg1, count 
		arg1.to_s.pluralize(count)
	end

	def irregular_simple_pluralize(arg1, count)
		if count == 1
			"need".to_s.pluralize(count + 1)
		else
			arg1.to_s
		end
	end

end
