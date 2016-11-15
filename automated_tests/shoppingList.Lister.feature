Feature: shoppingList.lister.feature
As a user I want to be able to manipulate my shopping list 
so I can order everything I want

# #   Scenario: Check all types of items on the SL

# # # Add scenarios to check the checkout buttons and banners (reserved timeslot, disabled state etc.)
# # # Add scenarios to test the menu options (share and delete all)


@smoke_test
Scenario: I want to toggle the sorting in the top level categories on the SL
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


