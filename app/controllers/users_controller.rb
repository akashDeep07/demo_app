class UsersController < ApplicationController

	def create
		user = User.new user_params
		if user.save
			render json: { data: UserSerializer.new(user), message: 'User has been created.' }, status: 201
		else
			render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :name, :password, :password_confirmation)
	end

end
