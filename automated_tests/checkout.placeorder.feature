Feature: Place an order with a vague term, products and a recipe on my shopping list
  As a user
  I want to be able to place an order with various items on my shopping list
  so that I have an open order

  Background:
    Given I have a new registered B2C user

  @smoke_test
  Scenario: I want to place an order with a product on my SL
    And I tap the next button
    And I tap the useLocation button
    And I tap the allow button
    And I tap the selectStoreCell view 
    And I tap the next button
    And I tap the tooltip view 
    And I tap the tooltip view 
    And I tap the login button
    And I set the property emailAddress on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button    
    And I tap the checkout button
    And I tap the choosePup button
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
    Then orderDetail button is displayed

  @smoke_test
  Scenario: I want to place an order with a vague term on my SL
    And I tap the next button
    And I tap the useLocation button
    And I tap the allow button
    And I tap the selectStoreCell view
    And I tap the next button
    And I tap the tooltip view 
    And I tap the tooltip view 
    And I tap the login button
    And I set the property emailAddress on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the vagueTermPlus button
    And I tap the close button    
    And I tap the checkout button
    And I tap the magnifyingGlass button
    And I tap the replace button
    And I tap the confirm sku button #talk to Thomas about this one
    And I tap the choosePup button
    And I tap the searchPup button 
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I tap the firstAvailableTimeSlot button #i am here
    And I tap the payAtPickUp button
    And I tap the ok button
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    Then orderDetail button is displayed

  @smoke_test_wip
  Scenario: I want to place an order with a recipe on my SL
    And I tap the next button
    And I tap the useLocation button
    And I tap the allow button
    And I tap the selectStoreCell view
    And I tap the next button
    And I tap the tooltip view 
    And I tap the tooltip view
    And I tap the login button
    And I set the property emailAddress on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the recipes tab
    And I tap the recipe button
    And I tap the addToShoppingList button
    And I tap the addIngredients button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the checkout button
    And I tap the magnifyingGlass button
    And I tap the replace button
    And I tap the confirm sku button
    And I tap the choosePup button
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
    Then orderDetail button is displayed