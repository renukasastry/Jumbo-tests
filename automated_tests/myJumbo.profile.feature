Feature: myJumbo.profile.feature
As a user I want to be able to see and update my profile info
so I can check and make sure my info is correct

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

  Scenario: As a B2C user I want to see correct info on my profile page
    Given I am a logged in B2C user
    And I tap the loggedIn button
    And the b2cConversion button is displayed
    And the conversionHeader view is displayed
    And the b2cLoginInfoHeader view is displayed
    And the changePassword button is displayed
    And the b2cContactInfoHeader view is displayed
    And the contactInfo button is displayed
    And the b2cContactAddressHeader view is displayed
    And the contactAddress button is displayed
    And the b2cMyStoreHeader view is displayed
    And the myStore button is displayed
    And the logout button is displayed

  Scenario: As a B2B user I want to see correct info on my profile page
    Given I am a logged in B2B user
    And I tap the loggedIn button
    And the b2bCompanyInfo view is displayed
    And the b2bLoginInfoHeader view is displayed
    And the changePassword button is displayed
    And the b2bContactInfoHeader view is displayed
    And the contactInfo button is displayed
    And the b2bContactInfoHeader view is displayed
    And the contactInfo button is displayed
    And the b2bMyStoreHeader view is displayed
    And the myStore button is displayed
    And the logout button is displayed
    And the invoiceHeader view is displayed
    And the invoiceButton view is displayed
    And the paymentHeader view is displayed

  Scenario: As a B2B-sub user I want to see correct info on my profile page
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the value iceb2einvoice+3@gmail.com on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the login button
    And I tap the loggedIn button
    And the b2bSubLoginInfoHeader view is displayed
    And the changePassword button is displayed
    And the b2bSubContactInfoHeader view is displayed
    And the b2bSubDelivery view is displayed
    And the changeDelivery button is displayed
    And the b2bSubHomeStore view is displayed
    And the logout button is displayed

  Scenario: As a B2C user I want to see correct info on my profile page
    Given I am a logged in B2C user
    And I tap the loggedIn button
    And I tap the changePassword button
    And I set the property password on the currentPassword field
    And I set the value qwerty2 on the newPassword field
    And I tap the save button
    And I tap the logout button
    And I tap the ok button
    And I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the value qwerty2 on the password field
    And I tap the login button
    And I tap the loggedIn button
    And the logout button is displayed

  Scenario: As a B2B user I want to see correct info on my profile page
    Given I am a logged in B2B user
    And I tap the loggedIn button
    And I tap the changePassword button
    And I set the property password on the currentPassword field
    And I set the value qwerty2 on the newPassword field
    And I tap the save button
    And I tap the logout button
    And I tap the ok button
    And I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the value qwerty2 on the password field
    And I tap the login button
    And I tap the loggedIn button
    And the logout button is displayed


