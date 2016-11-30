Feature: recipes.rdp.addIngredients.feature


  Scenario: I want to see the SL counter badge increase when I add ingredients to the SL
    Given I am on the myJumbo screen
    And the shoppingListBadge view is not displayed
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the search field
    And I tap the enter button
    And I tap the firstImage view
    And I tap the addToShoppingList button
    Then the ingredients view is displayed
    And I tap the addIngredients button
    Then the recipes view is displayed
    And the shoppingListBadge view is displayed

  Scenario: I want to see products added to the SL when I add them from RECIPEDETAIL screen
    Given I am on the myJumbo screen
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the search field
    And I tap the enter button
    And I tap the firstImage view
    And I tap the addToShoppingList button
    Then the ingredients view is displayed
    And the value 6 sneetjes notenbrood is displayed on the textTitle view
    And I tap the addIngredients button
    And I tap the shoppingList button
    And I tap the tooltip view
    And the value 6 sneetjes notenbrood is displayed on the textTitle view

  Scenario: I want to exclude a product from being added to the SL
    Given I am on the myJumbo screen
    And the shoppingListBadge view is not displayed
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the search field
    And I tap the enter button
    And I tap the firstImage view
    And I tap the addToShoppingList button
    Then the ingredients view is displayed
    And the value 6 sneetjes notenbrood is displayed on the textTitle view
    And I tap the firstIngredientCheckbox button
    And I tap the addIngredients button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value 6 sneetjes notenbrood is not displayed on the textTitle view

  Scenario: I want to swap an vague term for an SKU before adding it to the SL 
    Given I am on the myJumbo screen
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value champignons on the search field
    And I tap the enter button
    And I tap the firstImage view
    And I tap the addToShoppingList button
    And the ingredients view is displayed
    And the value 3 el olijfolie is displayed on the textTitle view
    And I tap the magnifyingGlass button
    And the value Voor dit recept heb je nodig: 3 el olijfolie is displayed on the olijfIngredientHeader view
#    And I tap the firstReplace button
#    And the value Bertolli Olijfolie Classico 500ml is displayed on the textTitle view

  Scenario: I want to swap an SKU term for another SKU before adding it to the SL 
    Given I am on the myJumbo screen
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value schol on the search field
    And I tap the enter button
    And I tap the firstImage view
    And I tap the addToShoppingList button
    And the ingredients view is displayed
    And the value Go-Tan Miehoen Rice-Noodles 250g is displayed on the textTitle view
    And I tap the firstIngredientReplace button
    And the value Voor dit recept heb je nodig: 250 g mihoen is displayed on the mihoenIngredientHeader view
#    And I tap the firstReplace button
#    And the value Jumbo Mihoen Goreng 1000g is displayed on the textTitle view
