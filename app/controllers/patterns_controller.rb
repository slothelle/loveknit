class PatternsController < ApplicationController
  def new
    @user = current_user
    @pattern = Pattern.new
    @yarn_weights = YarnWeight.all
    @needles = Needle.all
  end

  def create
    params[:pattern][:user_id] = current_user.id
    @pattern = Pattern.new(params[:pattern])
    if @pattern.save
      redirect_to user_pattern_url(user_id: current_user.id, id: @pattern.id)
    else # Error handling TBD
      render :new
    end
  end

  def show
    @user = params[:user_id]
    @pattern = Pattern.find(params[:id])
  end
end