class HatAdult < HatGenerator
  def ribbing_rows
    "2 inches (#{round_0(@row_1 * 2)} rows)"
  end

  def body_height
    "6.5 inches (#{round_0(@row_1 * 6.5)} rows)"
  end

  private
  def set_estimated_yardage_variables
    @radius = @hat_circumference/(2*3.142)
    @slope = 18 # ribbing_rows + body_height + decrease estimate
  end
end