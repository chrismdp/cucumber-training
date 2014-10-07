require 'capybara/cucumber'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://localhost:39402'

