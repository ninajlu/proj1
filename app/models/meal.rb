class Meal < ActiveRecord::Base
  attr_accessible :end, :start, :type
  belongs_to :venue
end
