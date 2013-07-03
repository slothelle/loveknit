class YarnWeight < ActiveRecord::Base
  attr_accessible :weight, :yardage_factor
  has_many :yarns
end
