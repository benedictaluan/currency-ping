Feature: Subscription

  Background:
    Given the app is properly setup
    And I have exchange rates data

  Scenario: Subscribe
    When I visit the homepage
    And I enter my subscription details
    Then I should see a success message
    And "benedict.aluan@gmail.com" should receive an email
    And I should receive a subscription email alert

  Scenario: Subscription alert
    When the currency updates
    And I have the following subscriptions:
      | base | country |
      | NZD  | PHP     |
      | AUD  | PHP     |
    Then I should receive a subscription email alert