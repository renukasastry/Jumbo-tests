Feature: shoppingList.lister.feature
As a user I want to be able to manipulate my shopping list
so I can order everything I want

# #   Scenario: Check all types of items on the SL

# # # Add scenarios to check the checkout buttons and banners (reserved timeslot, disabled state etc.)
# # # Add scenarios to test the menu options (share and delete all)


  @smoke_test @skip-ios
  Scenario: I want to toggle the sorting in the top level categories on the SL
    Given I am a logged in B2C user
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value Mandarijnen on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I set the value Krieltjes on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the shoppingListMenu button
    Then the menuSortInCategories button is displayed
    And I tap the sortInCategories button
    And I tap the shoppingListMenu button
    Then the menuSortInNormal button is displayed
    And I tap the sortInCategories button


@smoke_test @skip-android
Scenario: I want to toggle the sorting in the top level categories on the SL
    Given I am a logged in B2C user
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I set the value Krieltjes on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I set the value Mandarijnen on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I set the value Goudfrik on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the shoppingListMenu button
    And I tap the sortInCategories button
    Then the wijnBierSterkeDrankTitle view is displayed
    And the aardappelRijstPastaTitle view is displayed
    And the fruitTitle view is displayed
    And the diepvriesTitle view is displayed
    And I tap the shoppingListMenu button
    And I tap the sortInCategories button
    Then the wijnBierSterkeDrankTitle view is not displayed
    And the aardappelRijstPastaTitle view is not displayed
    And the fruitTitle view is not displayed
    And the diepvriesTitle view is not displayed


@smoke_test
Scenario: I want categories to be hidden when they don't contain product on the SL
    Given I am a logged in B2C user
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I set the value Krieltjes on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the shoppingListMenu button
    And I tap the sortInCategories button
    Then the wijnBierSterkeDrankTitle view is displayed
    And the aardappelRijstPastaTitle view is displayed
    And I swipe left on the firstProduct view
    And I tap the delete button
    Then the wijnBierSterkeDrankTitle view is displayed
    And the aardappelRijstPastaTitle view is not displayed

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

  Scenario: I want to see the timeslot reserved banner on my shoppinglist to inform me of my current choices
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

  Scenario: I want to see the open order banner on my shoppinglist to inform me of my current choices
    Given I am a logged in B2C user
    And I have placed a beer order
    When I tap the shoppingList button
    Then the openOrderBanner view is displayed
    And the openOrderText view is displayed

  Scenario: I want delete a product from my SL
    Given I am on the myJumbo screen
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And the SKUProduct view is displayed
    And I swipe left on the firstProduct view
    And I tap the delete button
    And the SKUProduct view is not displayed


