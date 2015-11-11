class MailersController < ApplicationController
  before_action :authenticate_user!

  def organizer_mail
    if current_user.is_manager
      @event = Event.find params[:id]
      @recipient_email = @event.attendee_emails
      body = params[:mail_body]
      OrganizerMailer.contact(current_user, @recipient_email, body).deliver
    end
  end

  def attendee_mail
    @event = Event.find params[:id]
    @recipient_email = @event.organizer.user.email
    body = params[:mail_body]
    OrganizerMailer.contact(current_user, @recipient_email, body).deliver
  end


end
