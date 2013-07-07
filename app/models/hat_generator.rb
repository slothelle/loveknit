class HatGenerator < PatternGenerator
  attr_reader :cast_on, :ribbing

  def generate_hat_pattern
    ribbing_multiple_8 if find_stitch_multiple == 8
    ribbing_multiple_9 if find_stitch_multiple == 9
    body_height
    set_estimated_yardage_variables
    surface_area
    set_crown_decrease_variables
  end

  def ribbing_multiple_8
    @ribbing = "1x1 or 2x2 (k1, p1 or k2, p2)"
  end

  def ribbing_multiple_9
    @ribbing = "3x3 (k3, p3)"
  end

  def slouch
    raw = @cast_on * 1.25
    @slouch = round_nearest(raw)
  end

  def beanie
    raw = @cast_on * 0.90
    @beanie = round_nearest(raw)
  end

  def beanie_first_decrease
    (@beanie / @multiple) - 2
  end

  def slouch_first_decrease
    (@slouch / @multiple) - 1
  end

  def size
    @hat_circumference
  end

  def ease
    round_0(@hat_circumference * 0.85)
  end

  def crown_decreases
    @counter = 1
    instructions = []
    (@num_repeats-1).times do
      instructions << odd_decrease_row << even_decrease_row
      @sts_remain-=@multiple
      @spacer_sts-=1
      @counter+=1
    end
    instructions << final_decrease_row
    instructions.join
  end

  private
  # Move to utility or parent class? Applies to all patterns
  def round_nearest(raw, multiple = @multiple)
    round_0(raw + multiple - (raw % multiple))
  end

  def surface_area
    @square_inches = (3.142 * @radius * @slope) + (3.142 * @radius * @radius)
  end

  def find_stitch_multiple
    raw = round_0(@hat_circumference * @per_1 * 0.85)
    rounded = [round_nearest(raw, 8), round_nearest(raw, 9)]
    if rounded.min % 8 == 0
      @cast_on = rounded.min
      @multiple = 8
    elsif rounded.min % 9 == 0
      @cast_on = rounded.min
      @multiple = 9
    end
    @multiple
  end

  def set_crown_decrease_variables
    @num_sts = (@cast_on / @multiple)
    @spacer_sts = @num_sts - 2
    @num_repeats = @num_sts - 1
    @sts_remain = @cast_on - @multiple
  end

  def odd_decrease_row
    "Row #{@counter}: * k#{@spacer_sts}, k2tog, rpt from * to end (#{@sts_remain} sts remaining).<br>"
  end

  def even_decrease_row
    "Row #{@counter+=1}: k all sts.<br>"
  end

  def final_decrease_row
    "Next row: k2tog #{@multiple} times (#{@sts_remain} sts remaining)."
  end
end



