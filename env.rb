require "capybara"
require "rspec/expectations"
require "pry"
require "open-uri"
require "site_prism"
require "capybara/cucumber"
require "selenium-webdriver"
require "capybara/rspec"
require "selenium/webdriver"
require "capybara/dsl"

RSpec.configure do |config|
    config.include Capybara::DSL
    config.include Capybara::RSpecMatchers
  end

# Capybara.configure do |config|
#     config.default_driver = :selenium_chrome
#     config.app_host = "https://web-arquivos-internal-hml.internaldh.grupofleury.com.br"
# end

Capybara.configure do |config|
    # informando que o driver padrao é o do selenium.
    config.default_driver = :selenium_chrome
    # defino a url padrao.
    #   config.app_host = "https://www.google.com"
    # defino o tempo maximo de espera para os elementos.
    config.default_max_wait_time = 30
  end