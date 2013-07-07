class HatChild < HatGenerator
  def ribbing_rows
    "1.5 inches (#{round_0(@row_1*1.5)} rows)"
  end

  def body_height
    "5 inches (#{round_0(@row_1 * 5)} rows)"
  end

  private
  def set_estimated_yardage_variables
    @radius = @hat_circumference/(2*3.142)
    @slope = 14.5
  end
end
