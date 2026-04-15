class Api::Admin::DashboardController < ApplicationController
  before_action :authenticate_admin!
  before_action :restrict_ip_access

  def index
    render json: { stats: "Secret admin data" }
  end

  private

  def restrict_ip_access
    allowed_ips = ["127.0.0.1", "YOUR_PUBLIC_IP"]
    unless allowed_ips.include?(request.remote_ip)
      render json: { error: "Access denied" }, status: :forbidden
    end
  end
end
