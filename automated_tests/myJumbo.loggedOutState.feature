Feature: myJumbo logged out state

  As a user
  I want to be able to access features of the app in logged out state
  use the app as an anonymous user

  @smoke_test
  Scenario: I want to search and add a vague term to the SL
    Given I am on the myJumbo screen 
    Then the firstOrderCell view is displayed
    And the registerOrLogin button is dislayed 
    And the myStore button is displayed 
    And the floater button is displayed

  @smoke_test
  Scenario: I want to search and add a vague term to the SL
    Given I am on the myJumbo screen 
    When I tap registerOrLogin button is dislayed 
    Then the login button is displayed 
    And the registerB2C button is displayed 
    And the registerB2B button is displayed 