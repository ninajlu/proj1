class Meal < ActiveRecord::Base
  attr_accessible :end, :start, :type, :venue_id
  belongs_to :venue
  def meal_venue
  	meal.venue if venue
  end
end
