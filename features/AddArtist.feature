Feature: Artists and artist page

  As a user
  So that I can track my artists
  I want to add a new artist to the list
  
  
  Scenario: Add an artist
    Given I'm on the artist creation page
    When I try to add a new artist
    Then I should be able to see the new artist's page
    
  Scenario: Add an artist without a name
    Given I'm on the artist creation page
    When I try to add a new artist without a name
    Then I should see some errors on the page


