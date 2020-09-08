

#require 'capybara/cucumber'

require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'
require 'httparty'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

World(Helper)
World(Pages)

Capybara.configure do |config|
config.default_driver = :selenium_chrome
config.app_host = 'https://outlook.live.com/mail/0/inbox'
config.default_max_wait_time = 5
end

