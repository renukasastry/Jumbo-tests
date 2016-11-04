Feature: content on pages
  As a user 
  I want to see what I ordered in the past

  @smoke_test
  Scenario: I want to verify the content is correct on the closed orders
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
#    And I tap the next button
#    And I tap the tooltip view
#    And I tap the tooltip view
#    And I tap the tooltip view
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
#    And I tap the searchPup button
#    And I set the value Hapert on the pickUpPointSearch field
#    And I tap the enter button
#    And I tap the pup button
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
    And the barcode button is displayed
