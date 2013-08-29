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




	
	
