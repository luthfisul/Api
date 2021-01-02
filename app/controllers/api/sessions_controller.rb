class Api::SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.find_by(email: params[:email])
		user_valid = User.find_by(password: params[:password])
		
		if user and user_valid
			render json: user.as_json(only: [:id, :username, :email, :authentication_token]), status: :ok
		else
			status(:unprocessable_entity)
		end
	end

	def destroy
		
	end
end
