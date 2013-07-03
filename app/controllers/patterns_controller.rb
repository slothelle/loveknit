class PatternsController < ApplicationController
  def new
    @user = current_user
    @pattern = Pattern.new
  end
end