require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine" # 👈 Add this back for RailsAdmin/Devise JS
require "sprockets/railtie"    # 👈 Ensure this is here if using propshaft/sprockets

# Keep these commented out if you aren't using them:
# require "active_storage/engine"
# require "action_mailbox/engine"
# require "action_text/engine"

Bundler.require(*Rails.groups)
# ... rest of file

module DesireSpecialistHospitalApi
  class Application < Rails::Application
    config.load_defaults 8.0

    # ❌ REMOVE API ONLY (we need full Rails for RailsAdmin + Devise)
    # config.api_only = true

    # middleware (safe minimal set)
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore, key: "_session"

    config.autoload_lib(ignore: %w[assets tasks])

    config.staff_email = "danejukwo11@gmail.com"
  end
end