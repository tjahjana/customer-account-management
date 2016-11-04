#Code from Barbara Kleinen media-programming-rails/poller/app/helpers/sessions_helper.rb
#Stand 4th November 2016

module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  def current_user
    @current_user = @current_user || User.find_by(id: session[:user_id])
  end
  def logged_in?
    !current_user.nil?
  end
  def require_login
    unless current_user
      flash[:error] = "You must be logged in."
      redirect_to login_url
    end
  end
end
