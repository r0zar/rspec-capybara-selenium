require 'rspec'
require 'capybara/rspec'
 
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
 
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.bitly.com'
 
describe 'visiting the landing page', :type => :feature do
  it 'goes to bitly' do
    visit('/')
    expect(page).to have_content 'Bitly'
  end
end

describe 'signing in', :type => :feature do
  it 'signs me in' do
    visit('/a/sign_in')
    expect(page).to have_content 'SIGN IN'
    fill_in('username', :with => 'rozar')
    fill_in('password', :with => 'thisisnotmyrealpass')
    click_on('Sign in')
  end
end

# Test cases for core Bit.ly functionality go here.

describe 'going to my linked site', :type => :feature do
  it 'goes to my site' do
    visit('http://bit.ly/1S19nrA')
    expect(page).to have_content 'Ross Ragsdale'
  end
end
