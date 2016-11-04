class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user.try(:authenticate, params[:session][:password])
      log_in(user)
      redirect_to root_url
      flash[:success] = "You are logged in"
    else
      redirect_to login_url
      flash[:error] = "Invalid username/password combination"
    end
  end

  def destroy
  	log_out
  	redirect_to root_url
  	flash[:success] = "You are logged out"
  end
end
