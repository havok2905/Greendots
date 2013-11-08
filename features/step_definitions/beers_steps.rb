
# Steps for beer models
Given /^I have a beer$/ do
  beer = Beer.new
  beer.name = "Maduro"
  beer.brewery = "Cigar City"
  beer.year = "2013"
  beer.style = "Brown Ale"
  beer.rating = "5"
  beer.save
end



# Form Actions
Given /^I fill out the beer form with beer data$/ do
  fill_in "beer_name", :with => "Maduro"
  fill_in "beer_brewery", :with => "Cigar City"
  fill_in "beer_year", :with => "2013"
  fill_in "beer_style", :with => "Brown Ale"
  fill_in "beer_rating", :with => "5"
end



# Seeing beer data
Then /^I should see beer information$/ do
  page.should have_content "Maduro"
  page.should have_content "Cigar City"
  page.should have_content "2013"
  page.should have_content "Brown Ale"
  page.should have_content "5"
end

Then /^I should see no beer information$/ do
  page.should have_no_content "Maduro"
  page.should have_no_content "Cigar City"
  page.should have_no_content "2013"
  page.should have_no_content "Brown Ale"
  page.should have_no_content "5"
end



# Page navigation
When /^I click on new beer$/ do
  click_link 'New Beer'
end

When /^I submit a beer$/ do
  click_button 'Create Beer'
end

When /^I go to the beer page$/ do
  visit '/beers/'
end

When /^I go to the create beer page$/ do
  visit '/beers/new/'
end

When /^I go to the view beer page for (\d+)$/ do |id|
  visit '/beers/' + id
end