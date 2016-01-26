Feature: Login feature

  Scenario: As a valid user I can log into my app
    Given I enter "carlos@gmail.com" into input field number 1
    Then I enter "123456" into input field number 2
    # I press the enter button
    # And I press the "Acceder" button
    And I go back
    And I press "btn_login"
    # Then I see the text "Android 6.0"
    Then I check text "Android 6.0"
