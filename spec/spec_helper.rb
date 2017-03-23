require 'pageify'
require 'pageify/capybara'
require 'capybara'
require 'pry-coolline'
#require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara/session'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'https://duckduckgo.com' 
end

include Capybara::DSL

pageify("spec/pages")
set_session(page)
