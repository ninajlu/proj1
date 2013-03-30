class Venue < ActiveRecord::Base
  attr_accessible :avg, :location, :name
  has_many :meals
end
