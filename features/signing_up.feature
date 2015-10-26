Feature: Signing up

  Background:
    Given I am on the sign up page

  Scenario: User tries to sign up with only a email
    When I only fill in the email field
    Then I should not be signed up

  Scenario: User tries to sign up with only a password
    When I only fill in the password field
    Then I should not be signed up
#
#  Scenario: User tries to sign up without confirming his/her password
#    When I sign up using 'what2@what.what'
#    And I don't confirm my password
#    Then I should not be signed up

  Scenario: User tries to sign up with a taken email
    When I try signing up with a taken email
    Then I should not be signed up

  Scenario: User successfully signs up
    When I sign up with 'what3@what.what'
    Then I should be signed in



