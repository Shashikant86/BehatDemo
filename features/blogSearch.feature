Feature: Blog Search
	In order to search blogs
	As a sauce user
	I need see blogs

@javascript
Scenario: Search Behat Blogs 
Given I am on "/blog"
When I fill in "s" with "behat"
And I press "Search"
Then I should see "Adding Sauce To Behat"

@javascript 
Scenario: No post
Given I am on "/blogs"
When I fill in "s" with "chips"
And I press "Search"
Then I should see "No Posts found"



	
	
