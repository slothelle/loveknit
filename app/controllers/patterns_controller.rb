class PatternsController < ApplicationController
  include PatternInitializersHelper
  def new
    @user = current_user
    @pattern = Pattern.new
    @yarn_weights = YarnWeight.all
    @needles = Needle.all
  end

  def create
    params[:pattern][:user_id] = current_user.id
    @yarn_weights = YarnWeight.all
    @needles = Needle.all
    @pattern = Pattern.new(params[:pattern])
    if @pattern.save
      redirect_to user_pattern_path(user_id: current_user.id, id: @pattern.id)
    else # Error handling TBD
      render :new
    end
  end

  def show
    @pattern = Pattern.find(params[:id])
    @hat = initialize_and_generate_hat(@pattern)
    @hat.generate_hat_pattern
  end

  def destroy
    @pattern = Pattern.find(params[:id])
    @pattern.destroy
    redirect_to user_path(params[:user_id])
  end
end