class WelcomeController < ApplicationController

	def landing
		@user = User.new
	end

	def show
		@neighborhood = Neighborhood.find(params[:id])
	end


	def index
    	@users = User.all
 	 end

	def new
		# Present an empty login form
		@user = User.new
		@is_login = true
	end

	def create
		# Find the user that is trying to log in		
		u = User.where(email: params[:user][:email]).first
		if u && u.authenticate(params[:user][:password])
			# Store as a cookie in the users' browser the ID of them,
			# indicating that they are logged in
			session[:user_id] = u.id.to_s
			redirect_to events_path
		else
			# Go back to the login page
			redirect_to new_session_path
		end
	end
end
