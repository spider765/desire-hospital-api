Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Added a comma between the two URLs and added credentials: true
    origins 'http://localhost:3000', 'https://desire-hospital-ui-c5mn.vercel.app'
    
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end