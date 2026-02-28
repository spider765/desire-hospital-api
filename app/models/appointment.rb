class Appointment < ApplicationRecord
  belongs_to :doctor

validates :name, :doctor_id, :appointment_date, :appointment_time, presence: true
end
