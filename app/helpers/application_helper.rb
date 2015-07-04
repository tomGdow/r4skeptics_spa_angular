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
        "http://www.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}&d=wavatar"
    end 

    def logged_in_user

        if user_signed_in?
            current_user
        elsif admin_signed_in?
            current_admin
        else
            return false 
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

    def widget_message(username: '')

        return {login: "Welcome #{username},  you are logged in",
                login_admin: "#{username} logged in as #{"administrator".upcase}",
                signup:  "Welcome #{username}, you are signed up",
                logout: "You have successfully logged out",
                password_change: "Password for #{username} has been changed", 
                password_change_admin: "The administrator password for #{username} has been changed", 
                account_delete:  "Account successfully deleted"}
    end
end

# Acknowledgements
#1  'gravatar'  method modified from:
# http://www.pluralsight.com/courses/ruby-rails-4-getting-started  (Samer Buna, Pluralsight)
# http://stackoverflow.com/a/14365917/499167 (Tom Burgess, Stack Overflow)

#2  'errors_for' method modified from:
#  http://stackoverflow.com/a/9753932/499167  (Zabba at StackOverflow)
