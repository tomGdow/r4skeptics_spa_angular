class HomeController < ApplicationController
  def index
  end
	def show

	end
	def new

		respond_to do | format |
			format.js
		end
	end
end
