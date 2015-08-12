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
 
describe 'tears Home page content', :type => :feature do
  it 'should dispaly in the centre' do
    visit('/')

    # ADOPT A DOG       
    expect(page).to have_xpath("//img[contains(@src,'adopt_dog.jpg')]")
       
    # ADOPT A CAT    
	expect(page).to have_xpath("//img[contains(@src,'adopt_cat2.jpg')]")
    
    # Be a SUPPORTER    
    expect(page).to have_xpath("//img[contains(@src,'supporterbutton.jpg')]")
    
    #  FOLLOW US links
    #  FACEBOOK    
    expect(page).to have_xpath("//img[contains(@src,'fb2.png')]")

    # TWITTER 
    expect(page).to have_xpath("//img[contains(@src,'twitter.png')]")

    #  YOUTUBE
    expect(page).to have_xpath("//img[contains(@src,'youtube.png')]")

    # INSTAGRAM 
    expect(page).to have_xpath("//img[contains(@src,'insta2.png')]")

    #  RSS FEED
    expect(page).to have_xpath("//img[contains(@src,'rss_2.png')]")   
   end
end
	
describe 'tears SIDEBAR', :type => :feature do
  it 'should display in the SIDEBAR' do
    visit('/')
    
    #  SAVED BY THE DOGS
    expect(page).to have_xpath("//img[contains(@src,'sbtd-thumb.jpg')]")

    #  SMS
    expect(page).to have_xpath("//img[contains(@src,'SMS_2.jpg')]")

    #  WAG the blog
    expect(page).to have_content 'WAG the blog'

    #  Lottery    
    expect(page).to have_xpath("//img[contains(@src,'NATIONAL-LOTTERIES-BOARD-LOGO.jpg')]")
    
    # Animal Talk     
    expect(page).to have_xpath("//a[@href='http://animalchannel.co.za/']")    

    # Furkidz
    expect(page).to have_xpath("//a[@href='http://www.furkidz.co.za/index.php?option=com_comprofiler&task=userProfile&user=119&Itemid=69']")    

    # My Planet
    expect(page).to have_xpath("//a[@href='https://www.myschool.co.za/supporter/apply/']")    
  end
end