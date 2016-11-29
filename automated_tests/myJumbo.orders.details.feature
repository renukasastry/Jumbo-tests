Feature: myJumbo.orders.details.feature
As a user I want to be able to view the details of an order after I placed it
so I can make sure I order exactly what I want


  @smoke_test
  Scenario: I want to CANCEL an order as a B2C user
    Given I am a logged in B2C user
    And the firstOrderCell view is displayed
    And the orderHistory button is not displayed
    And I have placed a beer order
    And I tap the orderHistory button
    And I tap the orderDetail button
    And I tap the cancelOrder button
    And I tap the ok button
    Then the canceledOrder button is displayed
    And I tap the back button
    And the orderHistory button is displayed

  @smoke_test
  Scenario: I want SAMPLES received from previous orders to not be available to be added to the shopping list
    Given I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the value 4350@mail.com on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the login button
    And I tap the iosDecline button
    And the orderHistory button is displayed
    And I tap the orderHistory button
    And I tap the 29novDate button
    And the value 7 Up is displayed on the orderProductsList view
    And the value Knorr Visbouillon 6 Tabletten 60g is displayed on the orderProductsList view
    And I tap the reorderProducts button
    Then the value 7 Up is displayed on the reorderProductsList view
    And the value Knorr Visbouillon 6 Tabletten 60g is not displayed on the reorderProductsList view

  @smoke_test
  Scenario: I want to verify the CONTENT is correct on a open order
    Given I am a logged in B2C user
#    And I tap the next button
    Then loggedIn button is displayed
    And the firstOrderCell view is displayed
    And the orderHistory button is not displayed
    And I have placed a beer order
    And I tap the orderHistory button
    When I tap the orderDetail button
    Then the pickup_time field is displayed
    And the pickup_location field is displayed
    And the value Ophaalinformatie is displayed on the pickupInfo field
    And the value Bestelde producten is displayed on the orderedProductInfo field
    And the value Totaal* is displayed on the totalAmount field
