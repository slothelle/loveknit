class HatInfant < HatGenerator
  def ribbing_rows
    "1 inch (#{round_0(@row_1)} rows)"
  end

  def body_height
    "2.5 inches (#{round_0(@row_1 * 2.5)} rows)"
  end

  private
  def set_estimated_yardage_variables
    @radius = @hat_circumference/(2*3.142)
    @slope = 6 # ribbing_rows + body_height + decrease estimate
  end
end