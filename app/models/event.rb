class Event < ActiveRecord::Base
  has_one :organizer
  has_many :attendees


end
