require 'rspec'
require 'capybara/rspec'
 
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
 
Capybara.run_server = false
Capybara.current_driver = :selenium
Capybara.app_host = 'http://41.79.78.80/'
 
describe 'tears main header navigation', :type => :feature do
  it 'should redirect the user to' do
    
    visit('/')
    expect(page).to have_content 'We strive to meet the needs of the underprivileged communities by:'
    
    within(".nav-wrapper") do
    	click_link("About us")
    end    
    
    current_url.should == "http://41.79.78.80/about-us/"
    expect(page).to have_content 'A brief history as retold by co-founder Marilyn Hoole'
    
    within(".nav-wrapper") do
    	click_link("Adoptions")
    end
        
    current_url.should == "http://41.79.78.80/adoptions-2/"
    expect(page).to have_content("Click here to view our Adoption Policy")

    within(".nav-wrapper") do
    	click_link("Ways to help")
    end

    current_url.should == "http://41.79.78.80/ways-to-help/"
    expect(page).to have_content("Become a Supporter, Volunteer or Member")

    within(".nav-wrapper") do
    	click_link("Blog/News")
    end    

    current_url.should == "http://41.79.78.80/category/blognews/"
    expect(page).to have_css('.blog-header')

    within(".nav-wrapper") do
        click_link("Sponsors")
    end    

    current_url.should == "http://41.79.78.80/sponsors/"
    expect(page).to have_content('A special thanks to our Sponsors!')

    within(".nav-wrapper") do
    	click_link("Useful info")
    end    

    current_url.should == "http://41.79.78.80/category/useful-info/"
    expect(page).to have_content('Read full story')   
    
    within(".nav-wrapper") do
    	click_link("Contact us")
    end    

    current_url.should == "http://41.79.78.80/contact/"
    expect(page).to have_content('Contact the TEARS team')    

    within(".nav-wrapper") do
    	click_link("Donate")
    end    

    current_url.should == "http://41.79.78.80/donate-2/"
    expect(page).to have_content('TEARS BANK DETAILS:')

  end
end