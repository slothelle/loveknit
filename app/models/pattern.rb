class Pattern < ActiveRecord::Base
  belongs_to :user
  belongs_to :needle
  belongs_to :garment
  belongs_to :yarn_weight
  attr_accessible :name, :gauge_row_inch, :gauge_per_inch, :hat_circumference, :user_id, :needle_id, :garment_id, :yarn_weight_id

  validates_presence_of :name, :gauge_per_inch, :gauge_row_inch, :hat_circumference, :user_id, :needle_id, :garment_id, :yarn_weight_id
end
