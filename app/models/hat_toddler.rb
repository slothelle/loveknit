class HatToddler < HatGenerator
  def ribbing_rows
    "1.5 inches (#{round_0(@row_1*1.5)} rows)"
  end

  def body_height
    "4 inches (#{round_0(@row_1 * 4)})"
  end

  private
  def set_estimated_yardage_variables
    @radius = @hat_circumference/(2*3.142)
    @slope = 8.5
  end
end