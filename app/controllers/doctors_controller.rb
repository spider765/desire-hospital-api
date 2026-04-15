# app/controllers/doctors_controller.rb
class DoctorsController < ApplicationController
  def index
    doctors = Doctor.includes(:appointments)
    render json: {
      doctors: doctors.map do |doctor|
        doctor.as_json(include: :appointments).merge(
          image_url: doctor.image_url.present? ? url_for_image(doctor.image_url.url) : nil
        )
      end
    }
  end

  def show
    doctor = Doctor.includes(:appointments).find(params[:id])
    render json: {
      doctor: doctor.as_json(include: :appointments).merge(
        image_url: doctor.image_url.present? ? url_for_image(doctor.image_url.url) : nil
      )
    }
  end

  private

  def url_for_image(path)
    "#{request.base_url}#{path}"
  end
end
