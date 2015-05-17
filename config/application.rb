require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Learn
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    config.action_dispatch.default_headers.merge!({
      'Access-Control-Allow-Origin' => '*',
      'Access-Control-Request-Method' => '*'
    })

    config.topics = [{
      short_name: 'Coding & Games'
    }, {
      short_name: 'Community Action'
    }, {
      short_name: 'Designing + Making'
    }, {
      short_name: 'Earth & Science'
    }, {
      short_name: 'Media'
    }, {
      short_name: 'Numbers'
    }, {
      short_name: 'Performance'
    }, {
      short_name: 'Sports & Wellness'
    }, {
      short_name: 'Storytelling'
    }, {
      short_name: 'Work & Career'
    }, {
      short_name: 'Zoology'
    }]
  end
end
