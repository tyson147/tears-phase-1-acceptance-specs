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

describe 'about us side bar content', :type => :feature do
it 'should have have all social media icons in side bar link' do
    
    visit('/about-us')
    click_link("BE A SUPPORTER")
    expect(page).to have_xpath("//img[contains(@src,'social_media2.png')]")
    expect(page).to have_xpath("//a[@href='http://www.furkidz.co.za/index.php?option=com_comprofiler&task=userProfile&user=119&Itemid=69']")        
    expect(page).to have_xpath("//a[@href='https://www.myschool.co.za/supporter/apply/']")
  end
end