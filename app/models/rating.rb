class Rating < ActiveRecord::Base
  belongs_to :venue
  belongs_to :user
  belongs_to :meal
  attr_accessible :comments, :posted, :rate, :venue_id, :meal_id
  def rating_venue
  	rating.venue if venue
  end
  def rating_name
  	rating.name if venue
  end
end
