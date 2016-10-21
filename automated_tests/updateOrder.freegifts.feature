Feature: Free gifts should not be displayed on order update screen
  As a user
  I should not see the free gifts and samples when I update my order
  so I don't have the impression that I can increase the amount of free gifts and samples I'll get

  Background:
    Given I have a new registered B2C user

  @smoke_test
  Scenario: I want to updated an order and not see the free gifts and samples on order update screen
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value 74004PAK on the search field
    And I tap the enter button
    And I tap the skuPlusNormal1 button
    And I set the value 74412PAK on the search field
    And I tap the enter button
    And I tap the skuPlusNormal2 button
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
    And I tap the editOrder button
    And I tap the actionsheetAddProduct button
    Then the value Campina Halfvolle Melk Voordeelpak 2,4 Liter is displayed on the updateOrderProductsList view
    And the value Nutrilon Pepti met Pronutra 2 vanaf 6 Maanden 800g is displayed on the updateOrderProductsList view
    And the value 7UP 0,5 Liter is not displayed on the updateOrderProductsList view 
    And the value Knorr Visbouillon 6 Tabletten 60g is not displayed on the updateOrderProductsList view 

