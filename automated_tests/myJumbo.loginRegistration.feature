Feature: myJumbo.loginRegistration.feature
As a user I want to be able to login or register from the My Jumbo screen
so I can use all the wonderfull features accessible for logged in users

# Add scenario's for registration for all user types

 @smoke_test @mocks
 Scenario: I want to LOG IN via my Jumbo
   Given I am a logged in B2C user
   Then loggedIn button is displayed


  @smoke_test
  Scenario: I want to register as B2C user via My Jumbo
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetRegisterB2C button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the ok button
    And I set the property newUsername on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the registerCredentials button
    And I set the value Cube on the name field
    And I set the value the on the insertion field
    And I set the value Cubie on the surname field
    And I set the value 6123456789 on the phoneNumber field
    And I tap the registerName button
    And I set the value 1083HA on the postalCode field
    And I set the value 2 on the houseNumber field
    And I tap the validateAddressLookUp button
    And I tap the termsAndConditions checkbox
    And I tap the registerDelivery button
    And I tap the decline button
    Then loggedIn button is displayed


  @smoke_test
  Scenario: I want to register as B2B user via My Jumbo
    Given I have a new registered B2B user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetRegisterB2B button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the ok button
    And I set the property newUsername on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the registerCredentials button
    And I set the value 34359257 on the kvk field
    And I tap the registerKvkLookUp button
    And I tap the registerKvk button
    And I set the value Cube on the name field
    And I set the value the on the insertion field
    And I set the value Cubie on the surname field
    And I set the value 6123456789 on the phoneNumber field
    And I tap the registerName button
    And I tap the saveInvoiceAddress button
    And I tap the termsAndConditions checkbox
    And I tap the registerDelivery button
    And I tap the paymentInfoOk button
    And I tap the decline button
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page


 @smoke_test @skip-ios @mocks
 Scenario: I want to get an ERROR RESPONSE by logging in with a user that has not been registered yet
   When I tap the registerOrLogin button
   And I tap the login button
   And I set the value not_registered_user@icemobile.com on the emailAddress field
   And I set the value qqqqqq on the password field
   And I tap the login button
   Then the invalidUsernameOrPassword label is displayed

 @smoke_test @skip-ios @mocks
 Scenario: I want to get an ERROR RESPONSE by logging in with a user that has an incorrect password
   Given I have a new registered B2C user
   When I tap the registerOrLogin button
   And I tap the login button
   And I set the property username on the emailAddress field
   And I set the value qqqqqq on the password field
   And I tap the login button
   Then the invalidUsernameOrPassword label is displayed
