class ApplicationController < ActionController::Base


private

  def authenticate_user!
    redirect_to login_path unless session[:user_id]
  end

end
