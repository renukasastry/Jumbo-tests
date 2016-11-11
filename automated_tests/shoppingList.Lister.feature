Feature: shoppingList.lister.feature
As a user I want to be able to manipulate my shopping list 
so I can order everything I want

# #   @smoke_test
# #   Scenario: Check all types of items on the SL

# # # Add a logged in version of this scenario
# # # Add scenarios to check the checkout buttons and banners (reserved timeslot, disabled state etc.)
# # # Add scenarios to test the menu options (share and delete all)


  @nuri
  Scenario: I want to share my shoppinglist with one button
    Given I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    Then the value appel is displayed on the vagueTermTitle field
    And I tap the shoppingListMenu button
    And the shareList button is displayed

  @nuri
  Scenario: I want to delete my shoppinglist with one button
    Given I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    Then the value appel is displayed on the vagueTermTitle field
    And I tap the shoppingListMenu button
    And I tap the deleteAll button
    Then the shoppingListAddProduct button is displayed

  @nuri
  Scenario: I want to have information banners on my shoppinglist to inform me of my current choices
    Given I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the checkout button
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    Then the banner view is displayed
    Then the bannerTimeslotDate view is displayed
    Then the bannerReservedTimeslotDate view is displayed
    Then the bannerChange view is displayed


