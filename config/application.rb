require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Student
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.hosts << "8aab857e0000.ngrok.io"
    config.load_defaults 6.1
    config.autoload_paths += Dir.glob("#{config.root}/app/interactions/*")
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
