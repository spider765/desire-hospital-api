def create
  appointment = Appointment.new(appointment_params)
  if appointment.save
    render json: { message: "Appointment booked successfully!" }, status: :created
  else
    render json: { errors: appointment.errors.full_messages }, status: :unprocessable_entity
  end
end
