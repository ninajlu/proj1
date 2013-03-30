class Meal < ActiveRecord::Base
  belongs_to :venue
  attr_accessible :end, :start, :type, :venue_id

   def meal_venue
  	meal.venue if venue
  end
end
