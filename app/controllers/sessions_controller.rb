class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'You have been logged in successfully!' }
        format.js
      end
    else
      flash.now.alert = 'email of password is invalid'
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    reset_session
    redirect_to root_path, notice: 'logged out'
  end
end
