class ApplicationController < ActionController::Base

  helper_method :current_user

private

  def authenticate_user!
    redirect_to login_path unless session[:user_id]
  end

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end

end
