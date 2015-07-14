# This file is used by Rack-based servers to start the application.

require 'rack/cors'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, credentials: true, methods: [:get, :post, :put, :delete, :destroy, :option]
  end
end

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
