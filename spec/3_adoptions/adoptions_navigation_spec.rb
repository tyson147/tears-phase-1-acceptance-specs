require 'rspec'
require 'capybara/rspec'
 
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
 
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.ignore_hidden_elements = false

# Capybara.app_host = 'http://41.79.78.80/'
Capybara.app_host = 'http://tears.org.za/'
 
describe 'main adoptions page centre content navigation', :type => :feature do
  it 'should have Adopt a Dog button' do
  	visit('/adoptions-2')

  	find(:css, 'img[src*="meet-dogs.png"]').click
  	expect(page).to have_content 'Next'
  end

  it 'should have Adopt a Cat button' do
  	visit('/adoptions-2')

  	find(:css, 'img[src*="meet-cats.png"]').click
  	expect(page).to have_content 'Next'
  end
end  