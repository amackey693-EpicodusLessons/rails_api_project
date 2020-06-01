class UsersController < ApplicationController

  def index
    puts "SOMETHING!!"
  end

  def new
    @user = User.new
  end

  def protected
    if session[:user_id]
    else
      flash[:alert] = "You don't even go here, signup!"
      redirect_to '/signup'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end