Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # You must have a COMMA between the two URLs
    origins 'http://localhost:3000', 
            'https://desire-hospital-ui-c5mn.vercel.app',
            'https://desire-hospital-ui-c5mn-o7qhw1fqm-spider765s-projects.vercel.app'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true # This must be true for your admin login to work
  end
end