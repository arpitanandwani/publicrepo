require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara-screenshot'
require 'yaml'

 
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.default_wait_time = 30
Capybara.default_selector = :xpath


ENV_URL = ENV['TEST_ENV']
