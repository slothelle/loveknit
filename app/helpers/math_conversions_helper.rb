module MathConversionsHelper
  def to_meters(yards)
    (yards.to_i * 0.914).round(0)
  end

  def round_0(num)
    num.round(0)
  end

  def round_2(num)
    num.round(2)
  end
end