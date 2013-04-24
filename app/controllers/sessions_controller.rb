 class SessionsController < ApplicationController
	def new
		render 'new'
	end


	def create
		account = Account.find_by_user_id(params[:session][:user_id].downcase)
		if account && account.authenticate(params[:session][:password])
		    sign_in account
		    redirect_back_or root_path
		else
			flash[:error] = 'Invalid user id/password combination' # Not quite right!
			render 'new'
		end
	end
	

	def destroy
		sign_out
	    redirect_to root_url
	end
end
