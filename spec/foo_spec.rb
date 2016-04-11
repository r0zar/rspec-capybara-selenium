require 'rspec'
require 'capybara/rspec'
 
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
 
Capybara.run_server = false
Capybara.current_driver = :selenium
Capybara.app_host = 'http://www.google.com'
 
describe 'bar', :type => :feature do
  it 'foo' do
    visit('/')
    expect(page).to have_content 'Google'
  end
end