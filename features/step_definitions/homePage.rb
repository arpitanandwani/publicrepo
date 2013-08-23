# Another Git Upload
# Changes made for team1
topcat = Array.new
wedreg = Array.new
Given /^I am on the home page$/ do
  visit ENV_URL
end

Then /^I verify the site$/ do
#verify site
  page.should have_xpath("//*[@id='globalMastheadBrandLogo']/a/div")
  page.should have_xpath("//*[@id='globalMastheadUserMenu']/div/div/ul/li[5]/a")
end

Given /^I visit to the customer service page$/ do

  find("//*[@id='globalMastheadUserMenu']/div/div/ul/li[5]/a").click
end

Then /^I verify I am in the customer service page$/ do
  
  page.should have_xpath("//*[@id='localContentContainer']/h1")
end

Then /^I verify the customer service page URL$/ do
  url = "https://macys--tst.custhelp.com/"
  current_url.should == url
end

Given /^I get all the top level category into a list$/ do
  
  within(:xpath, "//*[@id='globalMastheadCategoryMenu']") do
  
  topcat[0] = find("//*[@id='menu-category-home']/a").text
  topcat[1] = find("//*[@id='menu-category-bed-bath']/a").text
  topcat[2] = find("//*[@id='menu-category-women']/a").text
  topcat[3] = find("//*[@id='menu-category-mens']/a").text
  topcat[4] = find("//*[@id='menu-category-juniors']/a").text
  topcat[5] = find("//*[@id='menu-category-kids']/a").text
  topcat[6] = find("//*[@id='menu-category-beauty']/a").text
  topcat[7] = find("//*[@id='menu-category-shoes']/a").text
  topcat[8] = find("//*[@id='menu-category-handbags-accessories']/a").text
  topcat[9] = find("//*[@id='menu-category-jewelry-watches']/a").text
  topcat[10] = find("//*[@id='menu-category-sale']/a").text
  
  end
  
  
end

When /^Navigate to The Wedding Registry Page$/ do
  find("//*[@id='globalMastheadFeatureMenuWeddingRegistry']").click
end

When /^I store all the top level category into a list$/ do
  
  within(:xpath, "//*[@id='globalMastheadCategoryMenu']") do
  
  wedreg[0] = find("//a[text()='WEDDING REGISTRY']").text
  wedreg[1] = find("//*[@id='menu-category-dining-entertaining']/a").text
  wedreg[2] = find("//*[@id='menu-category-kitchen']/a").text
  wedreg[3] = find("//*[@id='menu-category-bed-bath']/a").text
  wedreg[4] = find("//*[@id='menu-category-home-decor']/a").text
  wedreg[5] = find("//*[@id='menu-category-luggage']/a").text
  wedreg[6] = find("//*[@id='menu-category-cleaning-organizing']/a").text
  
  end
  
end


When /^I verify that the menus are different in the home page and registry page$/ do
  
   topcat.sort.should_not == wedreg.sort
   "Expected menus to be different but they are same"
   
end

When /^I select a top level category$/ do

find("//*[@id='menu-category-cleaning-organizing']/a").click
  
end

Then /^I verify the display of selected category$/ do
  page.has_content?('Cleaning & Organizing')
end