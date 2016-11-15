Feature: myJumbo.orders.editOrder.feature
As a user I want to be able to edit my order after I have placed it
so I can order exactly what I want if I change my mind

# Add scenario's for edit voucher and edit PUP and slot
  
  @smoke_test
  Scenario: I want to amend my order from the order history as a B2C user
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
    And I tap the myJumboFloater button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the addGroceries button
    And I tap the changeOrderFloater button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value Nieuw in je bestelling is displayed on the newSection view
    # Add steps to actually change the order

  @smoke_test
  Scenario: I want to amend my order from the order detail page as a B2C user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the orderDetail button
    And I tap the editOrder button
    And I tap the actionsheetAddProduct button
    And I tap the changeOrderFloater button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value Nieuw in je bestelling is displayed on the newSection view
    # Add steps to actually change the order


  @smoke_test
  Scenario: I want to amend my order from the order history as a B2B user
    Given I have a new registered B2B user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the addGroceries button
    And I tap the changeOrderFloater button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value Nieuw in je bestelling is displayed on the newSection view
    # Add steps to actually change the order


  @smoke_test
  Scenario: I want to amend my order from the order detail page as a B2B user
    Given I have a new registered B2B user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the orderDetail button
    And I tap the editOrder button
    And I tap the actionsheetAddProduct button
    And I tap the changeOrderFloater button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value Nieuw in je bestelling is displayed on the newSection view
    # Add steps to actually change the order

    
  Scenario: I want to see promotion disclaimer before editing timeslot of an open order as a B2C user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the orderDetail button
    And I tap the editOrder button
    And I tap the actionsheetEditTimeSlot button
    Then I tap the ok button


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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I tap the ok button
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the changeGroceries button
    Then the value nieuw in je bestelling is not displayed on the nieuwInJeBestelling field
    And I tap the changeOrderFloater button
    And I set the value kaas on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value Nieuw in je bestelling is displayed on the nieuwInJeBestelling field

  @smoke_test
  Scenario: I want to access the barcode scanner from the Edit order Screen from order history and check if the barcode elements are displayed correctly
    Given I have a new registered B2C user
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
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I tap the ok button
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the addGroceries button
    And I tap the changeOrderFloater button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button
    And I tap the allow button
    Then the emptyState view is displayed
    And the camera view is displayed


  @smoke_test
  Scenario: I want to updated an order and not see the free gifts and samples on order update screen
    Given I have a new registered B2C user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
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


      @smoke_test
  Scenario: I want to access the barcode scanner from the Edit order Screen from order detail and check if the barcode elements are displayed correctly
    Given I have a new registered B2C user
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
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I tap the ok button
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the orderDetail button
    And I tap the editOrder button
    And I tap the actionsheetAddProduct button
    And the changeOrderFloater button is displayed
    And I tap the changeOrderFloater button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button
    And I tap the allow button
    Then the emptyState view is displayed
    And the camera view is displayed


#  @smoke_test
#  Scenario: I want to deny access to use the camera and check if a message instructing how to enable it is displayed when I access the barcode scanner screen
#    Given I am on the myJumbo screen
#    When I tap the shoppingList button
#    And I tap the tooltip view
#    And I tap the addProduct button
#    And the barcodeScanner button is displayed
#    And I tap the barcodeScanner button
#    And I tap the decline button
#    Then the instructionMessage view is displayed
#    Then the camera view is not displayed

#	On iOS it is impossible to check two dialog's behind each other.
#	Therefore the last scenario will always fail on iOS. 
#	We still need to implement a way to check for an 'optional' dialog, this will allow this scenario to pass.