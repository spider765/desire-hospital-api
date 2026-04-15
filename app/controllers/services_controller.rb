# app/controllers/services_controller.rb
class ServicesController < ApplicationController
  def index
    services = Service.all
    render json: {
      services: services.map { |service| serialize_service(service) }
    }
  end

  def show
    service = Service.find(params[:id])
    render json: { service: serialize_service(service) }
  end

  private

  def serialize_service(service)
    service.as_json.merge(
      image_url: service.image_url.present? ? url_for_image(service.image_url.url) : nil,
      logo_url: service.logo_url.present? ? url_for_image(service.logo_url.url) : nil
    )
  end

  def url_for_image(path)
    "#{request.base_url}#{path}"
  end
end
