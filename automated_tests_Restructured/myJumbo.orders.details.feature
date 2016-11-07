Feature: myJumbo.orders.details.feature
As a user I want to be able to view the details of an order after I placed it
so I can make sure I order exactly what I want




  @smoke_test
  Scenario: I want to cancel an order as a B2C user
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And the firstOrderCell view is displayed
    And the orderHistory button is not displayed
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    And I tap the choosePup button
    And I tap the allow button
    And I tap the searchPup button
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I tap the firstAvailableTimeSlot button
    And I tap the payAtPickUp button
    And I tap the ok button
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the orderDetail button
    And I tap the cancelOrder button
    And I tap the ok button
    Then the canceledOrder button is displayed
    And I tap the back button
    And the orderHistory button is displayed

  @smoke_test
  Scenario: I want samples received from previous orders to not be available to be added to the shopping list
    Given I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the value 4350@mail.com on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the login button
    And I tap the iosDecline button
    And the orderHistory button is displayed
    And I tap the orderHistory button
    And I tap the orderDetail button
    And the value 7UP 0,5 Liter is displayed on the orderProductsList view 
    And the value Knorr Visbouillon 6 Tabletten 60g is displayed on the orderProductsList view
    And I tap the reorderProducts button
    Then the value 7UP 0,5 Liter is displayed on the reorderProductsList view
    And the value Knorr Visbouillon 6 Tabletten 60g is not displayed on the reorderProductsList view

      @smoke_test
  Scenario: I want to verify the content is correct on a open order
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
#    And I tap the next button
    Then loggedIn button is displayed
    And the firstOrderCell view is displayed
    And the orderHistory button is not displayed
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    And I tap the choosePup button
    And I tap the allow button
    And I tap the searchPup button
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I tap the firstAvailableTimeSlot button
    And I tap the payAtPickUp button
    And I tap the ok button
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    When I tap the orderDetail button
    Then the value ophaalinformatie is displayed on the pickup_title field
    And the value Bestelde producten is displayed on the order_details_product_list_title field
    And the value Totaal is displayed on the order_detail_total_amount_field field
    And the pickup_time field is displayed
    And the pickup_location field is displayed
