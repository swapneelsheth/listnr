Given(/^I'm on the artist creation page$/) do
  visit(new_artist_path)
end

When(/^I try to add a new artist$/) do
  fill_in 'Name', :with => "Beyonce"
  click_button 'Create Artist'
end

Then(/^I should be able to see the new artist's page$/) do
  assert page.has_content? ("Artist was successfully created.")
end

When(/^I try to add a new artist without a name$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see some errors on the page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end