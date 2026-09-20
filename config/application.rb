require_relative "boot"

require "rails"
require "active_record/railtie"
require "active_job/railtie"
require "action_controller/railtie"

Bundler.require(*Rails.groups)

module RailsSqliteSubject
  class Application < Rails::Application
    config.load_defaults 8.1
    config.active_job.queue_adapter = :test
    config.secret_key_base = "rundiff-production-proof-subject"
  end
end
