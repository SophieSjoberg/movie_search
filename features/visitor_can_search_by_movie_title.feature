Feature: Search for movies 
  As a user
  In order to find more information about a movie
  I would like to be able to search for a specific movie and generate the information about that movie

  Scenario: A visitor can search for a movie title
    When I visit the landing page
    And I fill in "Title" with "Willow"
    And I click "Search"
    Then I should see "Willow"
