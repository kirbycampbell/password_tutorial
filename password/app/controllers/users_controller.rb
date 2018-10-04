class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path
    end
  end

  def show
    @user = User.find_by(params[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)

  end

end
