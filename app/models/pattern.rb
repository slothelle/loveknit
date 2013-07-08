class Pattern < ActiveRecord::Base
  belongs_to :user
  belongs_to :hat_pattern

  attr_accessible :user_id, :hat_pattern_id, :user, :hat_pattern
  validates_presence_of :user_id
end
