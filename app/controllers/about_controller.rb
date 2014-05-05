class AboutController < ApplicationController
	def show
		@users = User.all
		@user = current_user
	end
end
