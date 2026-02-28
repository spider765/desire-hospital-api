class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :name, :specialty, :image_url, :description

end
