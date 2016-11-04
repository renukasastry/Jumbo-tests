Feature: change quantities of ordered products
  As a user 
  I want to be able to change the quantity of the number of products I ordered when the order is still open

  @smoke_test
  Scenario: I want to be able to change the quantity of the number of products I ordered when the order is still open
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
    And I tap the changeGroceries button
    And I tap the firstProductQuantitySelection button
    And I tap the increaseQuantity button
    And I tap the increaseQuantity button
    And I tap the increaseQuantity button
    And I tap the increaseQuantity button
    And I tap the next button
    Then the value 5 is displayed on the firstProductAmount field
    And I tap the payAtPickUp button

  @smoke_test
  Scenario: I want to see if nieuw in je bestelling is displayed when I order something new
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
    And I tap the changeGroceries button
#    Then the value nieuw in je bestelling is not displayed on the nieuwInJeBestelling field
    And I tap the changeOrderFloater button
    And I set the value kaas on the search field
    And I tap the skuPlus button
    And I tap the close button
    Then the value nieuw in je bestelling is displayed on the nieuwInJeBestelling field
