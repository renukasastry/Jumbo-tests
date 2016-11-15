Feature: myJumbo.profile.feature
As a user I want to be able to see and update my profile info
so I can check and make sure my info is correct


# Add scenario's to check all components of the profile screen for different user types
# Add scenario's for editing the editable information
# Add scenario's for enabling/disabling push permissions

  @smoke_test
  Scenario: I want to see my jumbo screen after LOG OUT instead of going back to the onboarding screens
    Given I am a logged in B2C user
    And I tap the loggedIn button
    And I tap the logout button
    And I tap the ok button
    Then the myJumboFloater button is displayed
    And the registerOrLogin button is displayed
    And the firstOrderCell view is displayed
    And the registerOrLogin button is displayed
    And the myStore button is displayed
    And the myJumboFloater button is displayed

