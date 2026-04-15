class AppointmentMailer < ApplicationMailer
  default from: 'youremail@gmail.com'

  def new_appointment(appointment)
    @appointment = appointment
    mail(
    to: 'destinyosuyi1@gmail.com',
      subject: "New Appointment from #{@appointment.name}"
    )
  end
end
