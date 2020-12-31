module Api
	class UserController < ApplicationController
		def index
			user = User.order('id ASC')
			render json: {status: 'Success', message:'Users List', data:user}, status: :ok
		end

		def show
			user = User.find(params[:id])
			render json: {status: 'Showed', message:'User founded' , data:user}, status: :ok
		end

		def create
			user = User.new(user_params)

			user.authentication_token.blank?
			if user.save
				render json: {status: 'Saved', message:'Data saved' , data:user}, status: :ok
			else
				render json: {status: 'Failed', message:'Data failed to save!' , data:user.errors}, status: :unprocessable_entity
			end
		end

		def destroy
			user = User.find(params[:id])
			user.destroy
			render json: {status: 'Deleted', message:'Data deleted' , data:user}, status: :ok
		end

		def update
			user = User.find(params[:id])

			user.authentication_token.blank?
			if user.update(user_params)
				render json: {status: 'Updated', message:'Data updated' , data:user}, status: :ok
			else
				render json: {status: 'Failed', message:'Data failed to update!' , data:user.errors}, status: :unprocessable_entity
			end
		end

		private

		def user_params
			params.permit(:email, :password, :authentication_token)
		end

	end
end
