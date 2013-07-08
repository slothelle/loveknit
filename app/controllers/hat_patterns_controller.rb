class HatPatternsController < ApplicationController
  include PatternInitializersHelper

  def new
    @hat = HatPattern.new
    @needles = Needle.all
    @yarn_weights = YarnWeight.all
  end

  def create
    # Clean this up.
    # Is there something wrong with the belongs_to association?
    @hat = HatPattern.new(params[:hat_pattern])
    if @hat.save
      @hat.update_attribute(:pattern, Pattern.create(user: current_user, hat_pattern: @hat))
      redirect_to @hat
    else
      redirect_to new_hat_pattern_path
    end
  end

  def show
    hat = HatPattern.find(params[:id])
    @hat = initialize_and_generate_hat(hat)
    @hat.generate_hat_pattern
  end

  def destroy
    @hat = HatPattern.find(params[:id])
    @hat.destroy
    redirect_to user_path(current_user.id)
  end
end