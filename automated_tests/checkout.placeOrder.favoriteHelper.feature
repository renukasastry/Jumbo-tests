Feature: checkout.placeOrder.favoriteHelper.feature
  As a user I want to see the favorite helper after placing an order 
  So that I can include products in my favorites list

# Add scenario to check if the favorite helper is displayed when it should
# Add a scenario to check that the favorite helper is not displayed when it shouldn't

  @smoke_test @working
  Scenario: SAMPLES should not be displayed on favorites helper, only products and free gifts
    Given I am a logged in B2C user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I tap the ok button
    Then the value Campina Halfvolle Melk Voordeelpak 2,4 Liter is displayed on the favoritesHelper view
    And the value 7UP 0,5 Liter is displayed on the favoritesHelper view 
    And the value Knorr Visbouillon 6 Tabletten 60g is not displayed on the favoritesHelper view 
