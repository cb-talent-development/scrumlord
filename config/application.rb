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

    config.action_mailer.smtp_settings = {
      address: config.smtp.sender_address,
      domain: config.smtp.sender_domain,
      port: config.smtp.port,
      user_name: config.smtp.user_name,
      password: config.smtp.password,
      starttls: config.smtp.starttls
    }

  end
end
