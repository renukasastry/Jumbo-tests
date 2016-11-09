Feature: myJumbo.loginRegistration.feature
As a user I want to be able to login or register from the My Jumbo screen
so I can use all the wonderfull features accessible for logged in users

# Add scenario's for registration for all user types

 @smoke_test @mocks
 Scenario: I want to log in via my Jumbo
   Given I have a new registered B2C user
   And I am on the myJumbo screen
   When I tap the registerOrLogin button
   And I tap the actionsheetLogin button
   And I set the property username on the emailAddress field
   And I set the property password on the password field
   And I tap the login button
   And I tap the decline button
   Then loggedIn button is displayed

 @smoke_test @skip-ios @mocks
 Scenario: I want to get an error response by logging in with a user that has not been registered yet
   When I tap the registerOrLogin button
   And I tap the login button
   And I set the value not_registered_user@icemobile.com on the emailAddress field
   And I set the value qqqqqq on the password field
   And I tap the login button
   Then the invalidUsernameOrPassword label is displayed

 @smoke_test @skip-ios @mocks
 Scenario: I want to get an error response by logging in with a user that has an incorrect password
   Given I have a new registered B2C user
   When I tap the registerOrLogin button
   And I tap the login button
   And I set the property username on the emailAddress field
   And I set the value qqqqqq on the password field
   And I tap the login button
   Then the invalidUsernameOrPassword label is displayed
