class ApplicationController < ActionController::Base
  USERS = { "nelson" => "123", "orion" => "321" }
  
  helper_method :current_user

private

  def authenticate_user!
    redirect_to login_path unless session[:user_id]
  end

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end
 
  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end

end
