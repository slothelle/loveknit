class Needle < ActiveRecord::Base
  has_many :patterns
  attr_accessible :size
end
