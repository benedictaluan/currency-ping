Feature: Subscription

  Background:
    Given the app is properly setup
    And I have exchange rates data
    And I visit the homepage
    And I enter my subscription details

  Scenario: Subscribe
    Then I should see a success message
    And "benedict.aluan@gmail.com" should receive an email

  Scenario: Subscription alert
    When the currency updates
    Then I should receive a subscription email alert