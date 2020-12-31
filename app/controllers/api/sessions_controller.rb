class Api::SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.where(email: params[:email])
		user_valid = User.where(password: params[:password])

		if user && user_valid
			render json: user.as_json(only: [:id, :email, :authentication_token]), status: :ok
		else
			head(:unauthorized)
		end
	end

	def destroy
		
	end
end
