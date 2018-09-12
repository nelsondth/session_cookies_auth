class SessionsController < ApplicationController
  def create
    name = params[:name]
    user = User.find_by(name: name)
    if user
      session[:user_id] = user.id
      redirect_to books_path
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  def new
  end

end
