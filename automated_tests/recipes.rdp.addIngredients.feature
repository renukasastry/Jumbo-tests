Feature: recipes.rdp.addIngredients.feature

# Add scenario's for convert to SKU and convert 
# Add scenario's for deselecting ingredients

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