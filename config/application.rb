require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RosterApp
  class Application < Rails::Application
    config.i18n.default_locale = :ja
    
    #特定のコントローラ・ビューにカスタムレイアウトを適用
    config.to_prepare do
      Devise::ConfirmationsController.layout "before_layout"
      Devise::PasswordsController.layout "before_layout"
      Devise::RegistrationsController.layout "before_layout"
      Devise::SessionsController.layout "before_layout"
      Devise::UnlocksController.layout "before_layout"
    end
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
