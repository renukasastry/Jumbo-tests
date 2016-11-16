Feature: checkout.placeOrder.feature
  As a user I want to be able to place an order with various items on my shopping list
  so that I have an open order

# Add scenario's for all user types (use "Given I am a logged in B2B user")
# Add scenario's for both HD and PUP

  @smoke_test @working @nuri
  Scenario: I want to place an order with a SKU on my SL
    Given I am a logged in B2C user
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
    Then the orderDetail button is displayed

  @smoke_test @working @nuri
  Scenario: I want to place an order with a VAGUE TERM on my SL
    Given I am a logged in B2C user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    Then the orderDetail button is displayed

  @smoke_test_wip @working @nuri
  Scenario: I want to place an order with an INGREDIENT on my SL
    Given I am a logged in B2C user
    And I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the search field
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the myJumbo tab
    And I tap the orderHistory button
    Then the orderDetail button is displayed

#  @smoke_test @nuri
#  Scenario: I want to apply early CUT OFF to my order
#    Given I am a logged in B2C user
#    And I tap the shoppingList button
#    And I tap the tooltip view
#    And I tap the shoppingListAddProduct button
#    And I set the value bier on the search field
#    And I tap the enter button
#    And I tap the skuPlus button
#    And I tap the close button
#    And I tap the checkout button
#    And I tap the choosePup button
#    And I tap the allow button
#    And I tap the searchPup button
#    And I set the value Hapert on the pickUpPointSearch field
#    And I tap the enter button
#    And I tap the pup button
#    And I select a slot that triggers the early cut off screen
## Atleast 2 days in the future and after 16:00
#    And I tap the payAtPickUp button
#    And I the ok button
#    Then the earlyCutOffTitle view is displayed
#    And the currentCutOff button is displayed
#    And I tap the earlyCutOff button
#    And I tap the next button
#    And I tap the next button
#    And I tap the back button
#    And I tap the orderHistory button
#    And I tap the orderDetail button
#    Then the earlyCutOffApplied view is displayed

#  @smoke_test @nuri
#  Scenario: I do NOT want to apply early CUT OFF to my order
#    Given I am a logged in B2C user
#    And I tap the shoppingList button
#    And I tap the tooltip view
#    And I tap the shoppingListAddProduct button
#    And I set the value bier on the search field
#    And I tap the enter button
#    And I tap the skuPlus button
#    And I tap the close button
#    And I tap the checkout button
#    And I tap the choosePup button
#    And I tap the allow button
#    And I tap the searchPup button
#    And I set the value Hapert on the pickUpPointSearch field
#    And I tap the enter button
#    And I tap the pup button
#    And I select a slot that triggers the early cut off screen
## Atleast 2 days in the future and after 16:00
#    And I tap the payAtPickUp button
#    And I the ok button
#    Then the earlyCutOffTitle view is displayed
#    And I tap the next button
#    And I tap the next button
#    And I tap the back button
#    And I tap the orderHistory button
#    And I tap the orderDetail button
#    Then the earlyCutOffNotApplied view is displayed

  @smoke_test @working @nuri
  Scenario: I want to place an order ADD a VOUCHERCODE en get discount
    Given I am a logged in B2C user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the openCoupon button
    And I set the value ICE2 on the addCouponInput field
    And I tap the addCoupon button
    And the value 1 euro korting is displayed on the discountTitle field
    And the value Servicecode: ICE2 is displayed on the discountCouponCode field
    And the value - 1,00 is displayed on the discountPrice field
    And I tap the payAtPickUp button
    And I dismiss the thank you page

  Scenario: I want to place an order using the home delivery option
    Given I am a logged in B2C user
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
    Then the orderDetail button is displayed

  @smoke_test @working @nuri
  Scenario: as B2B user I want to place an order with a SKU on my SL
    Given I am a logged in B2B user
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
    Then the orderDetail button is displayed

  @smoke_test @working @nuri
  Scenario: as B2B user I want to place an order with a VAGUE TERM on my SL
    Given I am a logged in B2B user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    Then the orderDetail button is displayed

  @smoke_test_wip @working @nuri
  Scenario: as B2B user I want to place an order with an INGREDIENT on my SL
    Given I am a logged in B2B user
    And I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the search field
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page
    And I tap the next button
    And I tap the back button
    And I tap the myJumbo tab
    And I tap the orderHistory button
    Then the orderDetail button is displayed

#  @smoke_test @nuri
#  Scenario: as B2B user I want to apply early CUT OFF to my order
#    Given I am a logged in B2B user
#    And I tap the shoppingList button
#    And I tap the tooltip view
#    And I tap the shoppingListAddProduct button
#    And I set the value bier on the search field
#    And I tap the enter button
#    And I tap the skuPlus button
#    And I tap the close button
#    And I tap the checkout button
#    And I tap the choosePup button
#    And I tap the allow button
#    And I tap the searchPup button
#    And I set the value Hapert on the pickUpPointSearch field
#    And I tap the enter button
#    And I tap the pup button
#    And I select a slot that triggers the early cut off screen
## Atleast 2 days in the future and after 16:00
#    And I tap the payAtPickUp button
#    And I the ok button
#    Then the earlyCutOffTitle view is displayed
#    And the currentCutOff button is displayed
#    And I tap the earlyCutOff button
#    And I tap the next button
#    And I tap the next button
#    And I tap the back button
#    And I tap the orderHistory button
#    And I tap the orderDetail button
#    Then the earlyCutOffApplied view is displayed

#  @smoke_test @nuri
#  Scenario: as B2B user I do NOT want to apply early CUT OFF to my order
#    Given I am a logged in B2B user
#    And I tap the shoppingList button
#    And I tap the tooltip view
#    And I tap the shoppingListAddProduct button
#    And I set the value bier on the search field
#    And I tap the enter button
#    And I tap the skuPlus button
#    And I tap the close button
#    And I tap the checkout button
#    And I tap the choosePup button
#    And I tap the allow button
#    And I tap the searchPup button
#    And I set the value Hapert on the pickUpPointSearch field
#    And I tap the enter button
#    And I tap the pup button
#    And I select a slot that triggers the early cut off screen
## Atleast 2 days in the future and after 16:00
#    And I tap the payAtPickUp button
#    And I the ok button
#    Then the earlyCutOffTitle view is displayed
#    And I tap the next button
#    And I tap the next button
#    And I tap the back button
#    And I tap the orderHistory button
#    And I tap the orderDetail button
#    Then the earlyCutOffNotApplied view is displayed

  @smoke_test @working @nuri
  Scenario: as B2B user I want to place an order ADD a VOUCHERCODE en get discount
    Given I am a logged in B2C user
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
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the openCoupon button
    And I set the value ICE2 on the addCouponInput field
    And I tap the addCoupon button
    And the value 1 euro korting is displayed on the discountTitle field
    And the value Servicecode: ICE2 is displayed on the discountCouponCode field
    And the value - 1,00 is displayed on the discountPrice field
    And I tap the payAtPickUp button
    And I dismiss the thank you page



    
