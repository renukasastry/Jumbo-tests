Feature: myJumbo.favoriteRecipes.feature

# Add scenario's for adding and removing favorite recipes

  Scenario: I want add a recipe to my favourites
    Given I am on the jumbo screen
    When I tap the recipes tab
    And I tap the recipesFloater button
    And I set x in the search field
    And I tap the skuPlus button
    And I tap the close button
    Then the value x is displayed in the x field