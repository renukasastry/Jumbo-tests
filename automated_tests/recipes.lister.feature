Feature: recipes.lister.feature

# Add scenario's for checking the elements on the lister page
# Add scenario for the empty state

  Scenario: I want to search for a recipe
    Given I am on the jumbo screen
    When I tap the recipes tab
    And I tap the recipesFloater button
    And I set x in the search field
    And I tap the skuPlus button
    And I tap the close button
    Then the value x is displayed in the x field


  Scenario: I want to add Ingredients
    Given I am on the jumbo screen
    When I tap the recipes tab
    And I tap the recipesFloater button
    And I set x in the search field
    And I tap the skuPlus button
    And I tap the close button
    Then the value x is displayed in the x field

  Scenario: I want add a recipe to my favourites
    Given I am on the jumbo screen
    When I tap the recipes tab
    And I tap the recipesFloater button
    And I set x in the search field
    And I tap the skuPlus button
    And I tap the close button
    Then the value x is displayed in the x field

  Scenario: I want to search for a recipe and get an emptystate view if its not there
    Given I am on the jumbo screen
    When I tap the recipes tab
    And I tap the recipesFloater button
    And I set x in the search field
    And I tap the skuPlus button
    And I tap the close button
    Then the value x is displayed in the x field