class SessionsController < ApplicationController
  skip_before_action :auth_user, only: [:new, :create]

  def page_view_reset
    session[:view_count] = 0
    session[:reset_count] = 0

    redirect_back fallback_location: dogs_path
  end 

  def logout
    # session[:id] = nil
    session.delete(:user_id)
  end 

  def new
  end 

  def create
    user = User.find_by(username: params[:session][:username])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to users_path(@user)
    else 
      flash[:errors] = "Username or Password is Incorrect"
      redirect_to new_login_path
    end 

  end 
end 