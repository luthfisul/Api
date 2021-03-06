module V1
	class UserController < ApplicationController
		def index
			@user = User.order('remember_created_at DESC')
			render :index, status: :ok 
		end

		def show
			@user = User.find(params[:id])
			render :show, status: :ok
		end

		def create
			@user = User.new(user_params)
			@user.authentication_token.blank?

			if @user.save
				render :create, status: :created
			else
				render :fail, status: :unprocessable_entity
			end
		end

		def destroy
			@user = User.find(params[:id])
			@user.destroy

			render :destroy, status: :ok
		end

		def update
			@user = User.find(params[:id])
			@user.authentication_token.blank?

			if @user.update(user_params)
				render :update, status: :ok
			else
				render :fail, status: :unprocessable_entity
			end
		end

		private

		def user_params
			params.permit(
				:username,
				:email,
				:password,
				:password_confirmation,
				:authentication_token
				)
		end
	end
end
