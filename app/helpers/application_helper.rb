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

	def password_length_message
		if @minimum_password_length
			return "#{@minimum_password_length} characters minimum"
		end
	end

	def gravatar (user, size)
		# code soure, see below
		gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
		"http://www.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
	end 

	def isgravatar? (user)
		gravatar_check = "http://gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email.downcase)}.png?d=404"
		uri = URI.parse(gravatar_check)
		http = Net::HTTP.new(uri.host, uri.port)
		request = Net::HTTP::Get.new(uri.request_uri)
		response = http.request(request)
		if (response.code.to_i == 404)
			return false
		else
			return true
		end 
	end

	def errors_for(model, attribute, msg)
		# code source, see below 
		if model.errors[attribute].present?
			content_tag :span, :class => 'error_explanation'  do
				model.errors[attribute].unshift(msg.to_s).join(" ")
			end
		end
	end

	def username (user: current_user)
		user.email.split('@').first.humanize
	end

end


# Acknowledgements
#1  'gravatar'  method modified from:
# http://www.pluralsight.com/courses/ruby-rails-4-getting-started  (Samer Buna, Pluralsight)
# http://stackoverflow.com/a/14365917/499167 (Tom Burgess, Stack Overflow)

#2  'errors_for' method modified from:
#  http://stackoverflow.com/a/9753932/499167  (Zabba at StackOverflow)
