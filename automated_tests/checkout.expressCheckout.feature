Feature: checkout.expressCheckout.feature
  As a user I want to be able to place an order with various items on my shopping list
  so that I have an open order


  @oneclick
  Scenario: I want to see if the EXPRESS CHECKOUT is available when the product bier is already in shopping basket
    Given I have a new registered B2C user
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


