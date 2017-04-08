require_relative 'boot'

require 'rails/all'
require 'bourbon'

Bundler.require(*Rails.groups)

module Overtime
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join("lib")
  end
end
