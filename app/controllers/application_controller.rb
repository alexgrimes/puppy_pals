class ApplicationController < ActionController::Base
  before_action :get_user
  before_action :auth_user

  def get_user
    @current_user = User.find_by(id: session[:user_id])
  end 

  def auth_user
    if @current_user

    else 
      redirect_to new_user_path
    end 
  end 
end
