# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Realtor::Application.initialize!

Realtor::Application.configure do
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
end
