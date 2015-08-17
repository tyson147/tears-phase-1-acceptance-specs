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
 
describe 'tears home page navigation', :type => :feature do
  
  # it 'should redirect me to adopt a dog page' do
  #   visit ('/')    
  #   all(:xpath, "//a[@href='http://tears.org.za.www59.cpt3.host-h.net/adoptions/dogs/']").first.click
    # expect(page).to have_content 'Next'
    # current_url.should == "http://41.79.78.80/adoptions/dogs/"
  # end

  # it 'should redirect me to adopt a cat page' do
  #   visit ('/')    
  #   all(:xpath, "//a[@href='http://tears.org.za.www59.cpt3.host-h.net/adoptions/cats/']").first.click
  #   expect(page).to have_content 'Next'
    # current_url.should == "http://41.79.78.80/adoptions/cats/"
  # end

  # it 'should redirect me to Become a supporter page' do
  #   visit ('/')    
  #   all(:xpath, "//a[@href='http://tears.org.za.www59.cpt3.host-h.net/ways-to-help/']").first.click
  #   expect(page).to have_content 'Become a Supporter, Volunteer or Member'
    # current_url.should == "http://41.79.78.80/adoptions/cats/"
  # end

  # it 'should redirect me to Tears Facebook Animal Rescue Page' do
    # visit ('/')  
    # click _link 'Like Page'  
    # all(:xpath, "//a[@href='https://www.facebook.com/TEARS.WC/']").first.click
    # expect(page).to have_content 'Facebook logo'
    # current_url.should == "http://41.79.78.80/adoptions/cats/"
  # end  
end

describe 'homepage sidebar navigation', :type => :feature do
  it 'should redirect me to Tears Facebook Animal Rescue Page' do
    visit ('/')      
    all(:xpath, "//a[@href='http://tears.org.za/come-and-get-saved-by-the-dogs/']").first.click        
    sleep(10)
    # page.driver.save_screenshot("screen.png")
    # expect(page).to .widget_woo_search
     
    current_url.should == "http://tears.org.za/come-and-get-saved-by-the-dogs/"
    # current_url.should == "http://41.79.78.80/come-and-get-saved-by-the-dogs/"
  end
end