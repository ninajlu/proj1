class Rating < ActiveRecord::Base
  belongs_to :venue
  belongs_to :user
  belongs_to :meal
  attr_accessible :comments, :posted, :rate
end
