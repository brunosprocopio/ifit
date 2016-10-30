Feature: Restaurant filter
  In order to filter the restaurant
  As a system's user or not
  I want to be able to filter the nearest restaurants by payment types accepted

  Scenario: Select cash as accepted payment
    Given I visit the restaurant page
    When I check the "dinheiro" checkbox
    And I do not check the "cartao_debito" checkbox
    And I do not check the "cartao_credito" checkbox
    And I click on the 'Filter' button
    Then I should see restaurants "1,2"