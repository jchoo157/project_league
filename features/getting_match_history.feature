Feature: Match History

  Scenario: User types in a summoner name
    Given I am on the home page
    When I look up the summoner 'mrapplebeans'
    Then I should see the summoners match history page

  Scenario: User is viewing the stats of a summoner on the match history page
    Given I am looking at 'mrapplebeans' match history
    Then I should see a table with the following data:
     | champion | items | KDA | Gold and Minion kills |


