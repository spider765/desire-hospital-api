class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  mount_uploader :image_url, DoctorImageUploader
end
