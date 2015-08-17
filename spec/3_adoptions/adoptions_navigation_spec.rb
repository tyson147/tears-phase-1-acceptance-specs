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
 
# describe 'main adoptions page centre content navigation', :type => :feature do
  # it 'should have Adopt a Dog button' do
  # 	visit('/adoptions-2')

  # 	find(:css, 'img[src*="meet-dogs.png"]').click
  # 	expect(page).to have_content 'Next'
  #   current_url.should == "http://41.79.78.80/adoptions/dogs/"
  # end

  # it 'should have Adopt a Cat button' do
  # 	visit('/adoptions-2')

  # 	find(:css, 'img[src*="meet-cats.png"]').click
  # 	expect(page).to have_content 'Next'
  #   current_url.should == "http://41.79.78.80/adoptions/cats/"
  # end
# end
  describe 'right hand side buttons / icons and navigation', :type => :feature do
  # it 'should have Adopt a dog tile' do
  #   visit('/adoptions-2')    
  #     expect(page).to have_content 'ADOPT A DOG'
  #     click_link 'ADOPT A DOG'      
  #     expect(page).to have_content 'Next'
      # current_url.should == "http://41.79.78.80/adoptions/dogs/"    
  # end

  # it 'should have Adopt a cat tile' do
  #   visit('/adoptions-2')
  #     expect(page).to have_content 'ADOPT A CAT'
  #     click_link 'ADOPT A CAT'      
  #     expect(page).to have_content 'Next'
      # current_url.should == "http://41.79.78.80/adoptions/cats/"    
  # end

  # it 'should have Be a supporter tile' do
  #   visit('/adoptions-2')
  #     expect(page).to have_content 'BE A SUPPORTER'
  #     click_link 'BE A SUPPORTER'      
  #     expect(page).to have_content 'Become a Supporter, Volunteer or Member'
      # current_url.should == "http://41.79.78.80/ways-to-help/"    
  # end


  # ==========================================

  #  WTF

  # it 'should have social media icons' do
  #     visit('/adoptions-2')
        # expect(page).to have_content 'BE A SUPPORTER'
        # page.should have_css "//a[contains(@href,'http://tears.org.za/wp-content/uploads/2015/02/social_media2.png/')]"
        # all(:xpath, "//a[@href='http://tears.org.za/pat-for-a-spay-and-make-a-world-of-difference/']").first.click                         
        # expect(page).to have_content 'Pay for a Spay and make a World of Difference'
        # current_url.should == "http://41.79.78.80/pat-for-a-spay-and-make-a-world-of-difference/"
  # end

  # ==========================================

  # it 'should have pay for a spay tile' do
  #     visit('/adoptions-2')
  #       expect(page).to have_content 'BE A SUPPORTER'
  #       page.should have_xpath "//a[contains(@href,'http://tears.org.za/pat-for-a-spay-and-make-a-world-of-difference/')]"
  #       all(:xpath, "//a[@href='http://tears.org.za/pat-for-a-spay-and-make-a-world-of-difference/']").first.click                         
  #       expect(page).to have_content 'Pay for a Spay and make a World of Difference'
  #       # current_url.should == "http://41.79.78.80/pat-for-a-spay-and-make-a-world-of-difference/"
  # end

  # ==========================================

  #  WTF

  # it 'should have OPT TO ADOPT tile' do
  #     visit('/adoptions-2')
  #       expect(page).to have_content 'BE A SUPPORTER'
  #       page.should have_xpath "//a[contains(@href,'http://tears.org.za/wp-content/uploads/2014/01/opt_to_adopt.jpg/')]"
  #       all(:xpath, "//a[@href='http://tears.org.za/wp-content/uploads/2014/01/opt_to_adopt.jpg/']").first.click                         
  #       expect(page).to have_content 'Pay for a Spay and make a World of Difference'
  #       # current_url.should == "http://41.79.78.80/pat-for-a-spay-and-make-a-world-of-difference/"
  # end

  # ==========================================

  it 'should contain these external links' do
    visit('/adoptions-2')
    expect(page).to have_xpath("//a[@href='https://www.myschool.co.za/supporter/apply/']")    
    expect(page).to have_xpath("//a[@href='http://www.furkidz.co.za/index.php?option=com_comprofiler&task=userProfile&user=119&Itemid=69']")    
  end

end 