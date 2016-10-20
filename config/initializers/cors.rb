# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, "Rack::Cors", :debug => true, :logger => (-> { Rails.logger }) do
  allow do
    origins '*'
    resource '/api/*',
      headers: :any,
      methods: %i(get post put patch delete options head)
  end
end

