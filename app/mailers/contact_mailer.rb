class ContactMailer < ApplicationMailer
  default from: 'youremail@gmail.com'  # this should match your SMTP user or domain

  def new_message(message)
    @message = message
    mail(
      to: 'danejukwo11@gmail.com',      # recipient email address
      subject: "New Contact Message from #{@message.name}"
    )
  end
end
