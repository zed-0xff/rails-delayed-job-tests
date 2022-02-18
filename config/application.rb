require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.hosts << "z1"

    if defined?(ActiveJob::QueueAdapters::ShoryukenConcurrentSendAdapter)
      # async one, faster
      config.active_job.queue_adapter = ActiveJob::QueueAdapters::ShoryukenConcurrentSendAdapter.new
    else
      config.active_job.queue_adapter = :shoryuken
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
