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
 
# describe 'tears about us page content and navigation', :type => :feature do
#   it 'should navigate to correct domain' do
    
#     visit('/about-us')
#     click_link("go here.")
#     current_url.should == "http://41.79.78.80/ways-to-help/"
#   end
# end

describe 'about us page side bar content and navigation', :type => :feature do
  # it 'should have Adopt a Dog side bar link' do
    
  #   visit('/about-us')
  #   click_link("ADOPT A DOG")
  #   expect(page).to have_content 'Next'
  # end

  # it 'should have Adopt a Cat side bar link' do
    
  #   visit('/about-us')
  #   click_link("ADOPT A CAT")
  #   expect(page).to have_content 'Next'
  # end

  # it 'should have Be a supporter side bar link' do
    
  #   visit('/about-us')
  #   click_link("BE A SUPPORTER")
  #   expect(page).to have_content("Become a Supporter, Volunteer or Member")
  # end

  # it 'has the pay for a spay icon' do
  # 	visit('/about-us')
  #   all(:xpath, "//a[@href='http://tears.org.za/pat-for-a-spay-and-make-a-world-of-difference/']").first.click
  #   expect(page).to have_content("Pay for a Spay and make a World of Difference")
  # end

  it 'has the opt to adopt icon' do
  	visit('/about-us')
  	
    all(:xpath, "//a[@href='http://tears.org.za.www59.cpt3.host-h.net/adoptions-2/']").first.click
    expect(page).to have_content("Adoption fees")
  end

end