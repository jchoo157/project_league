Feature: Match History

  Scenario: User types in a summoner name
    Given I am on the home page
    When I type in a summoner name
    Then I should see the summoners match history page