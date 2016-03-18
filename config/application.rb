require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyVet
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :es and all translations from config/locales/es.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('config', 'locales', 'es.{rb,yml}').to_s]
    config.i18n.default_locale = :es
    I18n.t 'activerecord.errors.messages.record_invalid'
    I18n.t 'errors.messages.record_invalid', scope: :active_record
    I18n.t :record_invalid, scope: 'activerecord.errors.messages'
    I18n.t :record_invalid, scope: [:activerecord, :errors, :messages]

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
