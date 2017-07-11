Feature: Home feature

  Scenario: Registration Screen
    Given I wait for 3 seconds
    And I am in the home page
    When I enter "levunguyen" into input field number 1
    And I enter "levunguyendn@gmail.com" into input field number 2
    And I press the "Female" button
    And I press image button number 1
    And I select the date from date picker
    And I press the "OK" button
    And I select spinner by id "text1"
    And I wait for 5 seconds
#    Then I see "Register Staff"


