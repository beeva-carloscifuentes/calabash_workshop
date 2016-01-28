Feature: Login feature

  Scenario: As a invalid user I check input email validation error
    Given I enter "carlos" into input field number 1
    Then I enter "1234" into input field number 2
    And I go back
    And I touch the login button
    And I touch the username input
    Then I check input validation error "introduce una dirección de email válida"
