class Event < ActiveRecord::Base
  has_many :organizers
  has_many :attendees


end
