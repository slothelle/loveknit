class PatternsController < ApplicationController
  def new
    @pattern = Pattern.new
  end
end