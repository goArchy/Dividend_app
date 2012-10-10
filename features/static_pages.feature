Feature: Static pages

  Scenario: Root page should exist
    Given I am on the root page
    Then I should see a header with title Dividend finder
  
  Scenario: About page should exist
    Given I am on the about page
    Then I should see an about header
