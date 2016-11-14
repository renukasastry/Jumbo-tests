Feature: recipes.lister.feature
  As a user I want my recipes lister to display the recipes and able to order from there

# Add scenario's for checking the elements on the lister page

  Scenario: I want to see ingredients when I add them to the lister
    Given I am on the jumbo screen
    And the shoppingListBadge is not displayed
    When I tap the recipes tab
    And I tap the recipesFloater button
    And I set the value kaas in the search field
    And I tap the enter button
    And I tap the firstImage view
    And I tap the addToShoppingList button
    Then the ingredients view is displayed
    And I tap the addToShoppingList button
    Then the recipes view is displayed
    And the shoppingListBadge is displayed

  Scenario: I want add a recipe to my favourites
    Given I am on the jumbo screen
    When I tap the recipes tab
    And I tap the recipesFloater button
    And I set x in the search field
    And I tap the skuPlus button
    And I tap the close button
    Then the value x is displayed in the x field

