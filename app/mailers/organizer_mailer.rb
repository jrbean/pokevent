class OrganizerMailer < ApplicationMailer

  def contact(user, recipient_email, body)
    mail(
     to: recipient_email,
     body: body,
     content_type: "text/plain",
     subject: "Pokévent Contact from #{user.username}"
     )
  end

end
