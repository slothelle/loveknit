class UsersController < ApplicationController
  def new
    @user = User.new
    render layout: false
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      create_session
      redirect_to @user
    else
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
    @hats = @user.hat_patterns
    @patterns = @user.patterns
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    params[:user][:password] = @user.password
    @user.update_attributes(params[:user])
    redirect_to user_path(params[:id])
  end
end