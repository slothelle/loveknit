class Pattern < ActiveRecord::Base
  belongs_to :user
  belongs_to :hat_pattern
  belongs_to :garment

  attr_accessible :user_id, :hat_pattern_id, :garment_id, :user, :hat_pattern, :garment
  validates_presence_of :user_id, :garment_id
  validates_presence_of :hat_pattern_id, :on => :update
end
