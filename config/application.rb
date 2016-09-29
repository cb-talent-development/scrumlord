require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Scrumlord
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default_url_options = {:host => ENV['HOST']}
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :authentication => ENV['SMTP_AUTHENTICATION'],
      :address => ENV['SMTP_ADDRESS'],
      :port => ENV['SMTP_PORT'],
      :domain => ENV['SMTP_SENDER_DOMAIN'],
      :user_name => ENV['SMTP_USERNAME'],
      :password => ENV['SMTP_PASSWORD'],
      :enable_starttls_auto => ENV['SMTP_STARTTLS']
    }
  end
end
