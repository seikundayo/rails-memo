require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MemoApp
  class Application < Rails::Application
    # タイムゾーンを日本時間に設定
    config.time_zone = 'Asia/Tokyo'
    # デフォルトのロケールを日本（ja）に設定
    config.i18n.default_locale = :ja
  end
end
