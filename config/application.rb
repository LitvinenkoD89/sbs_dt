require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DarkTheater
  class Application < Rails::Application
    # config.autoload_paths += %w(#{config.root}/app/models/ckeditor)

    config.active_record.raise_in_transactional_callbacks = true
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.assets.precompile += %w( .svg .eot .woff .ttf .otf )
    config.assets.precompile += Ckeditor.assets
    config.assets.precompile += %w( ckeditor/* )
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.secret_key_base = '0590030b36a1c59c5376ffa046e7086c8e52a743c5caa0d8a14e5dd2a15b35d9d871f0bfb3dd2d444b83b6688aec83c5a3eb4e9380b7005ef9ca12b66f1ee55a'
  end
end
