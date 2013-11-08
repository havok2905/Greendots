Feature: Manage Beers
  In order to keep track of my craft beer
  As a user
  I want to create new beers through a form

@start
Scenario: Start on the beer home page
  Given I go to the beer page
  Then I should see no beer information

@create
Scenario: Create and see view a new beer
  Given I go to the create beer page
  And I fill out the beer form with beer data
  And I submit a beer
  And I go to the view beer page for 1
  Then I should see beer information

@check
Scenario: Go back to the beer home page
  Given I have a beer
  And I go to the beer page
  Then I should see beer information