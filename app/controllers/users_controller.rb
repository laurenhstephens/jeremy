class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def home
    @user = current_user

  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "You are signed up."
      else
      render "new"
    end
  end
end