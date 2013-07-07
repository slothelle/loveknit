class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :ravelry_name, :email, :password

  has_secure_password
  has_many :patterns

  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates_uniqueness_of :email, :on => :create
  validates_presence_of :email, :password, :on => :create
end