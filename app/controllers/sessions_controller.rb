class SessionsController < ApplicationController
  def create
    name = params[:name]
    user = User.find_by(name: name)
    if user
      session[:user_id] = user.id
      # Uso de flash
      # flash[:notice] = 'Usted ha iniciado sesion'
      redirect_to books_path, notice: 'Usted ha iniciado sesion'
    else
      flash[:error] = 'No se encontro un usuario con ese nombre'
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path, notice: 'Ha cerrado la sesion satisfactoriamente'
  end

  def new
  end

end
