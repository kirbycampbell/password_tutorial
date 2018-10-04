class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    return head(:forbidden) unless @user.authenticate(params[:password_field])
    session[:user_id] = @user.id
  end

end
