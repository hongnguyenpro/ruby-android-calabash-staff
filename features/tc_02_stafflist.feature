Feature: List all staffs

  @background_scenario
  Scenario: Precondition Register
    Given I wait for 3 seconds
    And I am in the home page
    When I enter "levunguyen" into input field number 1
    And I enter "levunguyendn@gmail.com" into input field number 2
    And I press the "Female" button
    And I press image button number 1
    And I select the date from date picker
    And I press the "OK" button
    And I select spinner by id "text1"
    And I select my department
    And I scroll down
    And I wait for 5 seconds
    And I see "Register"
    And I press the "Register" button

  
  Scenario: As a user I want to see a list of user So that I know all my staff
    Given I am in the list of staff
    When I move down
    And I wait for 3 seconds
    And I move down
    Then I see "A14"
    
  @last_scenario
  Scenario: As a user I want to see the details of staff
    Given I select staff at row 14
    And I wait for 3 seconds
    Then I should see "A14"
    