class SessionsController < ApplicationController
  def new
    @user = User.new
    render layout: false
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      create_session
      redirect_to user_path(@user.id)
    else # Error handling needed
      redirect_to root_path
    end
  end

  def destroy
    end_session
    redirect_to root_path
  end
end