require 'capybara/cucumber'
require 'selenium/webdriver'

Capybara.run_server = false
Capybara.default_driver = :selenium_chrome_headless
Capybara.app_host = "http://localhost:3000"
Capybara.default_max_wait_time = 10

Quand("un visiteur ajoute un nouveau point de vue {string}") do |string|
  visit "/viewpoint/a1d9ce7575293e1e5e48e39dc261ae38"
end

Alors("un des points de vue affichés est {string} au portfolio {string}") do |viewpoint, string|
  visit "/"
  expect(page).to have_content viewpoint
end
