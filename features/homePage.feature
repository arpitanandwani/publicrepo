Feature: Verify Macy's Website's Basic Functionality modified


<<<<<<< HEAD
# NOTE: :team2
=======
# NOTE: :shubham_m
>>>>>>> d5c0e76e4983b514b6658e480aaae45b98d1a66c
#  - Put the Step Definitions into one .rb file.
#  - Do not use text values to find UI elements.  Use xpaths and ids.

# Level 1
# In this scenario, use two or more valid ways 
# to verify that the home page is correctly being 
# displayed

Scenario: Verification of Home Page
Given I am on the home page
Then I verify the site

# Level 1
Scenario: Verification of Access Contact credit services Page
Given I am on the home page
	And I visit to the customer service page
Then I verify I am in the customer service page
	And I verify the customer service page URL

	

# Level 2
Scenario: Verify the top level category list is different in Home page and Wedding Registry page.

Given I am on the home page
And I get all the top level category into a list
When Navigate to The Wedding Registry Page
	And I store all the top level category into a list
	And I verify that the menus are different in the home page and registry page
	And I select a top level category
Then I verify the display of selected category

