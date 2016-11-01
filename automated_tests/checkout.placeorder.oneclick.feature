Feature: Place an order with a vague term, products and a recipe on my shopping list
  As a user
  I want to be able to place an order with various items on my shopping list
  so that I have an open order

  Background:
    Given I have a new registered B2C user

  @oneclick
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
    And I tap the firstAvailableTimeSlot button
    And I tap the payAtPickUp button
    And I tap the ok button
    And I tap the next button
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button    
    And I tap the checkout button
    And the newOrder button is displayed

  @oneclick @hello
  Scenario: I want to see if the express checkout is available when the product bier is already in shopping basket
    Given I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the value oneclickslot+1@mail.com on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the login button
    And I tap the shoppingList button
    And I tap the tooltip view
#   Sometimes Bier order is already available in this account, sometimes its not
    And I tap the shoppingListAddProduct button
#    And I tap the shoppingListFloater button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    And the expressCheckout button is displayed



