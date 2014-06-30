class HomeController < ApplicationController
	def index
		@users = User.all
		@user = current_user
	end

	def politics
	end

	def citizen
	end
end
