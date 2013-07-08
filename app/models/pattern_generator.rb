class PatternGenerator
  include PatternConstantsHelper
  include PatternViewHelper
  include MathConversionsHelper

  attr_reader :row_1, :per_1, :title, :user_id

  def initialize(user_input)
    @title = user_input[:name]
    @user_id = user_input[:user_id]
    @needle = Needle.find(user_input[:needle_id])
    @row_1 = user_input[:gauge_row_inch]
    @per_1 = user_input[:gauge_per_inch]
    @yarn_weight = YarnWeight.find(user_input[:yarn_weight_id])
    @hat_circumference = user_input[:circumference]
  end

  def needle
    @needle.size
  end

  def smaller_needle
    if @needle.id-1 == 0
      @needle.size
    else
      Needle.find(@needle.id-1).size
    end
  end

  def estimated_yardage
    round_0(@yarn_weight.yardage_factor.to_f * @square_inches * 1.1)
  end

  def per_4
    round_2(@per_1 * 4)
  end

  def row_4
    round_2(@row_1 * 4)
  end

  def yarn_weight
    @yarn_weight.weight
  end
end