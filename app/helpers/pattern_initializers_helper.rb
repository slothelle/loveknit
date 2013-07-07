module PatternInitializersHelper
  include PatternConstantsHelper

  def initialize_and_generate_hat(user_input)
    if HAT_SIZES[:adult].include?(user_input[:hat_circumference])
      @hat = HatAdult.new(user_input)
    elsif HAT_SIZES[:child].include?(user_input[:hat_circumference])
      @hat = HatChild.new(user_input)
    elsif user_input[:hat_circumference] == HAT_SIZES[:infant][1]
      @hat = HatToddler.new(user_input)
    elsif user_input[:hat_circumference] == HAT_SIZES[:infant][0]
      @hat = HatInfant.new(user_input)
    end
  end
end