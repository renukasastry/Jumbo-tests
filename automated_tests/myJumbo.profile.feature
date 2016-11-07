Feature: myJumbo.profile.feature
As a user I want to be able to see and update my profile info
so I can check and make sure my info is correct


  @smoke_test
  Scenario: I want to see my jumbo screen after log out instead of going back to the onboarding screens 
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
    And the firstOrderCell view is displayed
    And the registerOrLogin button is displayed
    And the myStore button is displayed
    And the myJumboFloater button is displayed

