require 'capybara/cucumber'
require 'capybara/dsl'
require 'selenium-webdriver'
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'utils')
require 'csv'
require 'rspec-expectations'
require 'sauce'
require 'capybara/rspec'
require "sauce/capybara"

Capybara.default_driver = :sauce
Capybara.default_wait_time = 5
Capybara.configure do |config|
  config.javascript_driver = :selenium
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Sauce.config do |config|
  config[:browsers] = [
    ["OSX 10.6", "firefox", nil]]
  config[:name] = "HGWM w Travis w SL"
  config[:passed] = "true"
end