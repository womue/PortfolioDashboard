require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# old name: MyNewBlacklightapp
module PortfoliosDashboard
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # GLOBAL VARIABLE for solr access in workarounds
    config.solr_server = 'http://www.yourserver.com/solr/corename'
  end
end
