class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'You have been logged in successfully!'
    else
      flash.now.alert = 'email of password is invalid'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    reset_session
    redirect_to root_path, notice: 'logged out'
  end
end
