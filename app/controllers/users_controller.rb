class UsersController < ApplicationController
  def new
    @user = User.new
    render layout: false
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      create_session
      redirect_to user_path(@user.id)
    else # Error handling needed
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
  end
end