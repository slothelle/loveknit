class Garment < ActiveRecord::Base
  attr_accessible :category
  has_many :patterns
end
