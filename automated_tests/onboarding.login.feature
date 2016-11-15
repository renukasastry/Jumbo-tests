Feature: onboarding.login.feature
As a user I want to be able to log in via the onboarding
so I can use all the wonderfull features accessible for logged in users



 @smoke_test @mocks
 Scenario: I want to log in a B2C user via on-boarding
    Given I am a logged in B2C user
#    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the tooltip view
    Then loggedIn button is displayed

 @smoke_test @mocks
 Scenario: I want to log in a B2B regular user via on-boarding
    Given I have a new registered B2B user
   When I tap the registerOrLogin button
    And I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
#    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the tooltip view
    Then loggedIn button is displayed

 @smoke_test @mocks
 Scenario: I want to log in a B2B sub user via on-boarding
   When I tap the registerOrLogin button
    And I tap the login button
    And I set the value Condigne+1@gmail.com on the emailAddress field
    And I set the value cTsKYxMpZ1sAAAFTK6U3sHRp on the password field
    And I tap the login button
    And I tap the iosDecline button
#    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the tooltip view
    Then loggedIn button is displayed

 @smoke_test @skip-ios @mocks
 Scenario: I want to get an ERROR RESPONSE by logging in with a B2B master user via on-boarding
   When I tap the registerOrLogin button
    And I tap the login button
    And I set the value icemaster3@icemobile.com on the emailAddress field
    And I set the value qqqqqq on the password field
    And I tap the login button
    Then the loginNotAllowed label is displayed