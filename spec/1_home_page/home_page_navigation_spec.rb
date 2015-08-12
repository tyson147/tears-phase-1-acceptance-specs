require 'rspec'
require 'capybara/rspec'
 
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
 
Capybara.run_server = false
Capybara.default_driver = :selenium
# Capybara.ignore_hidden_elements = false

# Capybara.app_host = 'http://41.79.78.80/'
Capybara.app_host = 'http://tears.org.za/'
 
describe 'tears home page navigation', :type => :feature do
  
  it 'should redirect me to adopt a dog page' do
    visit ('/')    
    all(:xpath, "//a[@href='http://tears.org.za.www59.cpt3.host-h.net/adoptions/dogs/']").first.click
    expect(page).to have_content 'Next'
    # current_url.should == "http://41.79.78.80/adoptions/dogs/"
  end

  it 'should redirect me to adopt a cat page' do
    visit ('/')    
    all(:xpath, "//a[@href='http://tears.org.za.www59.cpt3.host-h.net/adoptions/cats/']").first.click
    expect(page).to have_content 'Next'
    # current_url.should == "http://41.79.78.80/adoptions/cats/"
  end
end