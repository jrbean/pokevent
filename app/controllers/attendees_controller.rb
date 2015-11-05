class AttendeesController < ApplicationController

  def create
    parent = Event.find params[:event_id]
    @attendee = parent.attendees.new(attendee_params)
    @attendee.user = current_user
    @attendee.save!
    # @attendee = Event.find(params[:event_id]).attendees.create(attendee_params)
    redirect_to Event.find params[:event_id]
  end

  def new
    @attendee = Attendee.new
  end

  private

  def attendee_params
    params.permit(:event_id, :user_id)
  end
end
