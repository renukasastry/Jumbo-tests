Feature: User login
  As a user
  I want to be able to log in
  so that I can place orders

 @smoke_test
 Scenario: I want to log in via my Jumbo
   	Given I have a new registered B2C user
   	And I tap the next button
   	And I tap the selectStore button
   	And I tap the Allow button
   	And I tap the select button
   	And I tap the welcomeScreen button
   	When I tap the login button
   	And I set the property username on the emailAddress field
   	And I set the property password on the password field
   	And I tap the login button
   	And I tap the decline messages button
 	Then the Shopping list tooltip is displayed
    And I tap the tooltip
 	Then the Products tooltip is displayed
    And I tap the tooltip
   	Then logged in button is displayed

 @smoke_test
 Scenario: I want to log in a B2C user via on-boarding
   	Given I have a new registered B2C user
	When I tap the login button
   	And I set the property username on the emailAddress field
   	And I set the property password on the password field
   	And I tap the login button
   	And I tap the decline messages button
 	Then the Shopping list tooltip is displayed
    And I tap the tooltip
 	Then the Products tooltip is displayed
    And I tap the tooltip
   	Then logged in button is displayed

 @smoke_test
 Scenario: I want to log in a B2B regular user via on-boarding
 	Given I have a new registered B2B user
   	When I tap the login button
   	And I set the property username on the emailAddress field
   	And I set the property password on the password field
   	And I tap the login button
   	And I tap the decline messages button
 	Then the Shopping list tooltip is displayed
    And I tap the tooltip
 	Then the Products tooltip is displayed
    And I tap the tooltip
   	Then logged in button is displayed

 @smoke_test
 Scenario: I want to log in a B2B sub user via on-boarding
   	When I tap the login button
   	And I set the value Condigne+1@gmail.com on the emailAddress field
   	And I set the value cTsKYxMpZ1sAAAFTK6U3sHRp on the password field
   	And I tap the login button
 	Then the Shopping list tooltip is displayed
    And I tap the tooltip
 	Then the Products tooltip is displayed
    And I tap the tooltip
   	Then logged in button is displayed

 @smoke_test
 Scenario: I want to get an error response by logging in with a B2B master user via on-boarding
    When I tap the login button
    And I set the value icemaster3@icemobile.com on the emailAddress field
    And I set the value qqqqqq on the password field
    And I tap the login button
    Then the login not allowed label is displayed

 @smoke_test
 Scenario: I want to log out
   	Given I have a new registered B2C user
   	When I tap the login button
   	And I set the property username on the emailAddress field
   	And I set the property password on the password field
   	And I tap the login button
   	And I tap the decline messages button
   	And I tap the logged in button
   	And I tap the logout button
   	And I tap the dialogLogout button
   	Then I wait for app to restart
   	And the login button is displayed

 @smoke_test
 Scenario: I want to get an error response by logging in with a user that has not been registered yet
   	When I tap the login button
   	And I set the value not_registered_user@icemobile.com on the emailAddress field
   	And I set the value qqqqqq on the password field
   	And I tap the login button
   	Then the invalid username or password label is displayed

 @smoke_test
 Scenario: I want to get an error response by logging in with a user that has an incorrect password
   	Given I have a new registered B2C user
   	When I tap the login button
   	And I set the property username on the emailAddress field
   	And I set the value qqqqqq on the password field
   	And I tap the login button
   	Then the invalid username or password label is displayed
