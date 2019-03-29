#Author: SyntaxTeam
Feature: Login feature

  Background: 
    Given OrangeHRM log is displayed
  
  Scenario: Valid Login
  
    When I enter "admin" and "admin123"
    And I click on login button
    Then I successfully logged in

  Scenario Outline: Invalid login
    When I enter "<username>" and "<password>"
    And I click on login button
    Then I see erro message "<errorMessage>"

    Examples: 
      | username | password  | errorMessage             |
      | admin    | admit     | Invalid credentials      |
      | Monkey   | admin123  | Invalid credentials      |
      | Monkey   | Monkey123 | Invalid credentials      |
      |          | admin123  | Username cannot be empty |
      | Admin    |           | Password cannot be empty |
