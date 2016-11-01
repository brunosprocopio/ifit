Feature: Enter my CEP
  As a client
  I would like to enter my CEP
  So I could inform my location to app

  Scenario: User sees the label CEP
    When I go to the homepage
    Then I should see the CEP label
    And I should see the CEP input

  Scenario: User enter your CEP
    Given I enter my CEP in the search label
    When Click on the Submit Button
    Then I should be redirected to restaurantes_proximo_path