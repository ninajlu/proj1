class User < ActiveRecord::Base
  attr_accessible :email, :location
  has_many :ratings
end
