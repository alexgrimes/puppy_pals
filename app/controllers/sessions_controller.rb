class SessionsController < ApplicationController
  skip_before_action :auth_user, only: [:new, :create]

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
      redirect_to user
    else 
      flash[:errors] = "Username or Password is Incorrect"
      redirect_to new_login_path
    end 

  end 
end 