Feature: checkout.placeOrder.feature
  As a user I want to be able to place an order with various items on my shopping list
  so that I have an open order

  Background:
    Given I have a new registered B2C user

  @smoke_test
  Scenario: I want to place an order with a product on my SL
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
    And I tap the choosePup button
    And I tap the allow button
    And I tap the searchPup button
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    Then the orderDetail button is displayed

  @smoke_test
  Scenario: I want to place an order with a vague term on my SL
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
    And I tap the vagueTermPlus button
    And I tap the close button    
    And I tap the checkout button
    And I tap the magnifyingGlass button
    And I tap the replace button
    And I tap the confirmSku button
    And I tap the choosePup button
    And I tap the allow button
    And I tap the searchPup button 
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    Then the orderDetail button is displayed

  @smoke_test_wip
  Scenario: I want to place an order with an ingredient on my SL
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the searchItemName field
    And I tap the enter button
    And I tap the recipe button
    And I tap the addToShoppingList button
    And I tap the addIngredients button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the checkout button
    And I tap the magnifyingGlass button
    And I tap the replace button
    And I tap the confirmSku button
    And I tap the choosePup button
    And I tap the allow button
    And I tap the searchPup button
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the myJumbo tab
    And I tap the orderHistory button
    Then the orderDetail button is displayed

  @smoke_test
  Scenario: I want to apply early cut off to my order
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
    And I tap the choosePup button
    And I tap the allow button
    And I tap the searchPup button
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I select a slot that triggers the early cut off screen
# Atleast 2 days in the future and after 16:00
    And I tap the payAtPickUp button
    And I the ok button
    Then the earlyCutOffTitle view is displayed
    And the currentCutOff button is displayed
    And I tap the earlyCutOff button
    And I tap the next button
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the orderDetail button
    Then the earlyCutOffApplied view is displayed

      @smoke_test
  Scenario: I do not want to apply early cut off to my order
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
    And I tap the choosePup button
    And I tap the allow button
    And I tap the searchPup button
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I select a slot that triggers the early cut off screen
# Atleast 2 days in the future and after 16:00
    And I tap the payAtPickUp button
    And I the ok button
    Then the earlyCutOffTitle view is displayed
    And I tap the next button
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the orderDetail button
    Then the earlyCutOffNotApplied view is displayed

  @smoke_test
  Scenario: I want to place an order add a vouchercode en get discount
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
    When I tap the shoppingList button
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
    And I tap the addVoucherCode button
    And I set the value ICE2 on the voucherCode field
    And I tap the addVoucherCode button
    And the value 1 euro korting is displayed on the order_detail_discount_title_field field
    And the value Servicecode: ICE2 is displayed on the order_detail_discount_voucher_code field
    And the value -1,00 is displayed on the order_detail_discount_price field
    And I tap the payAtPickUp button
    Then the payment_confirmation_order_parent(thankyouPage) view is displayed
    