class Api::V1::UsersController < ApplicationController

  before_action :authorized, only: [:me]

 def index
    users = User.all
    render json: users
  end

  def create
    @user = User.new(user_params)
      if @user.save
        payload = { user_id: @user.id }
        render json: {user: @user, jwt: issue_token(payload)}
        #potential successful message
      else
        #potential error message
      end
  end

  def me
    render json: current_user
  end

  private

  def user_params
    params.require(:data).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
