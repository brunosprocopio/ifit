Feature: User_signin

  As an iFit administrator
  I would like to check a client profile info
  So I could use them to complete a request

  Scenario: User sees the label Sign In
    When I go to the homepage
    Then I should see the Sign In label
    And I should see the Sign In input

  Scenario: User enter his info
   Given I enter my info in the profile form 
   When I Click on the Submit Button
   Then I should be redirected to Welcome_New_User_path










   