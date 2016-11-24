Feature: recipes.rdp.addIngredients.feature

# Add scenario's for convert to SKU and convert

  Scenario: I want to see badge added to the shoppingbasket ingredients when I add them to the lister
    Given I am on the myJumbo screen
    And the shoppingListBadge view is not displayed
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the search field
    And I tap the enter button
    And I tap the firstImage view
    And I tap the addToShoppingList button
    Then the ingredients view is displayed
    And I tap the addToShoppingList button
    Then the recipes view is displayed
    And the shoppingListBadge view is displayed

  Scenario: I want to see products added to the shoppingbasket when I add them from RECIPEDETAIL screen
    Given I am on the myJumbo screen
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the search field
    And I tap the enter button
    And I tap the firstImage view
    And I tap the addToShoppingList button
    Then the ingredients view is displayed
    And the value 6 sneetjes notenbrood is displayed on the firstTextTitle view
    And I tap the addToShoppingList button
    And I tap the shoppingList button
    And I tap the tooltip view
    And the value 6 sneetjes notenbrood is displayed on the firstRowTextTitle view

  Scenario: I want to remove a product on the recipe detail screen
    Given I am on the myJumbo screen
    And the shoppingListBadge view is not displayed
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the search field
    And I tap the enter button
    And I tap the firstImage view
    And I tap the addToShoppingList button
    Then the ingredients view is displayed
    And the value 6 sneetjes notenbrood is displayed on the firstTextTitle view
    And I tap the first ingredientCheckbox
    And I tap the addToShoppingList button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value 6 sneetjes notenbrood is not displayed on the firstRowTextTitle view
    And I tap the addToShoppingList button
    Then the recipes view is displayed
    And the shoppingListBadge view is displayed