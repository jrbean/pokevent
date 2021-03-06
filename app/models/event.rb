class Event < ActiveRecord::Base
  has_one :organizer
  has_many :attendees

  def price_in_dollars
    dollars = self.cost_in_cents.to_d/100.0 if cost_in_cents
  end

  def attendee_emails
    adds = self.attendees.map { |att| att.user.email }
    adds.join(', ')
  end

end
