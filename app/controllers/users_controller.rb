class UsersController < ApplicationController
  skip_before_action :auth_user, only: [:new, :create]
  
  def index
    @users = User.all
  end 

  def new
    @user = User.new
  end 

  def show
    @user = User.find(params[:id])

    if @user == @current_user
      render :show
    else 
      flash[:error] = "can only view your own profile page"
      redirect_to user_path(@current_user)
    end
  end

  def create
      user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      redirect_to user_path(@user)
    else 
      flash[:user_errors] = user.errors.full_messages
      
      redirect_to new_user_path
    end 
  end 

  def edit
    @user = User.find(params[:id])
  end 

  def destroy
    @user = User.find(params [:id])
    @user.destroy
    flash[:notice] = "User deleted"
    redirect_to users_path
  end 

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end 

end