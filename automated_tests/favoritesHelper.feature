Feature: Favorite Helper
  As a user
  I want to see the favorite helper after placing an order 
  So that I can include products in my favorites list

  @smoke_test
  Scenario: Samples should not be displayed on favorites helper, only products and free gifts
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the iosDecline button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
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
    Then the value Campina Halfvolle Melk Voordeelpak 2,4 Liter is displayed on the favoritesHelper view
    And the value 7UP 0,5 Liter is displayed on the favoritesHelper view 
    And the value Knorr Visbouillon 6 Tabletten 60g is not displayed on the favoritesHelper view 