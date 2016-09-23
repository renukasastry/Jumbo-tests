Feature: Place an order with a vague term, products and a recipe on my shopping list
  As a user
  I want to be able to place an order with various items on my shopping list
  so that I have an open order

  Background:
    Given I have a new registered B2C user

  @smoke_test
  Scenario: I want to place an order with a product on my SL
    And I tap the next button
<<<<<<< HEAD
    And I tap the location button
=======
    And I tap the useLocation button
>>>>>>> 6ff2c7d5600ba5006a46b9f5a3045435e0befa12
    And I tap the allow button
    And I tap the selectStoreCell view 
    And I tap the next button
    And I tap the tooltip view 
    And I tap the tooltip view 
    And I tap the login button
    And I set the property emailAddress on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
<<<<<<< HEAD
    And I tap the decline button
=======
    And I tap the declineMessages button
>>>>>>> 6ff2c7d5600ba5006a46b9f5a3045435e0befa12
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And I set the value bier on the search field
    And I tap the enter button
<<<<<<< HEAD
    And I tap the skuPlus button
    And I tap the close button    
=======
    And I tap the vagueTerm button
    And I tap the magnifyingGlass button
    And I tap the replace button
>>>>>>> 6ff2c7d5600ba5006a46b9f5a3045435e0befa12
    And I tap the checkout button
    And I tap the choosePup button
    And I tap the searchPup button
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the Pup button
    And I tap the first available time slot
    And I tap the payAtPickUp button
    And I tap the OK button
    And I tap the next button
    And I tap the back button
    And I tap the order history button
    Then order detail button is displayed

  @smoke_test
  Scenario: I want to place an order with a vague term on my SL
    And I tap the next button
<<<<<<< HEAD
    And I tap the location button
=======
    And I tap the useLocation button
>>>>>>> 6ff2c7d5600ba5006a46b9f5a3045435e0befa12
    And I tap the allow button
    And I tap the selectStoreCell view
    And I tap the next button
    And I tap the tooltip view 
    And I tap the tooltip view 
    And I tap the login button
    And I set the property emailAddress on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
<<<<<<< HEAD
    And I tap the decline button
=======
    And I tap the declineMessages button
>>>>>>> 6ff2c7d5600ba5006a46b9f5a3045435e0befa12
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And I set the value bier on the search field
    And I tap the enter button
<<<<<<< HEAD
    And I tap the vagueTermPlus button
    And I tap the close button    
=======
    And I tap the vagueTerm button
>>>>>>> 6ff2c7d5600ba5006a46b9f5a3045435e0befa12
    And I tap the checkout button
    And I tap the magnifyingGlass button
    And I tap the replace button
    And I tap the confirm sku button #talk to Thomas about this one
    And I tap the choosePup button
    And I tap the searchPup button 
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I tap the first available time slot #i am here
    And I tap the payAtPickUp button
    And I tap the OK button
    And I tap the next button
    And I tap the back button
    And I tap the order history button
    Then order detail button is displayed

  @smoke_test_wip
  Scenario: I want to place an order with a recipe on my SL
    And I tap the next button
<<<<<<< HEAD
    And I tap the location button
=======
    And I tap the useLocation button
>>>>>>> 6ff2c7d5600ba5006a46b9f5a3045435e0befa12
    And I tap the allow button
    And I tap the selectStoreCell view
    And I tap the next button
    And I tap the tooltip view 
    And I tap the tooltip view
    And I tap the login button
    And I set the property emailAddress on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
<<<<<<< HEAD
    And I tap the decline button
=======
    And I tap the declineMessages button
>>>>>>> 6ff2c7d5600ba5006a46b9f5a3045435e0befa12
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
    And I tap the Pup button
    And I tap the first available time slot
    And I tap the payAtPickUp button
    And I tap the OK button
    And I tap the next button
    And I tap the back button
    And I tap the back button
    And I tap the order history button
    Then order detail button is displayed