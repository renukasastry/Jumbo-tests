Feature: myJumbo logged out state

  As a user
  I want to be able to access features of the app in logged out state
  use the app as an anonymous user

  @smoke_test
  Scenario: I want to see the features on the logged out state of My Jumbo
    Given I am on the myJumbo screen 
    Then the firstOrderCell view is displayed
    And the registerOrLogin button is displayed
    And the myStore button is displayed
    And the myJumboFloater button is displayed

  @smoke_test
  Scenario: I want to see the loging and registration options on the logged out state of My Jumbo
    Given I am on the myJumbo screen 
    When I tap the registerOrLogin button
    Then the actionsheetLogin button is displayed
    And the actionsheetRegisterB2C button is displayed
    And the actionsheetRegisterB2B button is displayed

  @smoke_test @4388
  Scenario: I want to see my jumbo screen after log out 
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the loggedIn button
    And I tap the logout button
    And I tap the ok button
    Then the myJumboFloater button is displayed
    And the registerOrLogin button is displayed