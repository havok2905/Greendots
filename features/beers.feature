Feature: Manage Beers
  In order to keep track of my craft beer
  As a user
  I want to create new beers through a form

@start
Scenario: Start on the beer home page
  Given I have no beer
  And I am on the beer page
  Then I should see no beer on the beer home page

Scenario: Create and see view a new beer
  Given I am on the beer page
  And I follow 'New Beer'
  And I have a beer
  And I am on the edit beer page for 1
  And I fill out the beer form with beer data
  And I follow 'Submit'
  And I am on the view beer page for 1
  Then I can see a beer summary

Scenario: Go back to the beer home page
  Given I have a beer
  And I am on the beer page
  Then I should see beer on the beer home page