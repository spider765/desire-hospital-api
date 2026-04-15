class Service < ApplicationRecord
  mount_uploader :image_url, ServiceImageUploader
  mount_uploader :logo_url, ServiceLogoUploader
end
