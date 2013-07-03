class Pattern < ActiveRecord::Base
  belongs_to :user
  belongs_to :needle
  belongs_to :garment
  attr_accessible :name, :gauge_row_inch, :gauge_per_inch, :hat_circumference
end
