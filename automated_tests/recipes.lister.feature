Feature: recipes.lister.feature
  As a user I want my recipes lister to display the recipes and able to order from there

# Add scenario's for checking the elements on the lister page

  Scenario: I want to see ingredients when I add them to the lister
    Given I am on the jumbo screen
    When I tap the recipes tab
    Then the recipesFloater button is displayed
    And the filter button is displayed
    And the numberOfRecipes view is displayed
    And the imageRecipe is displayed
    And the creationTime is displayed
    And the portionNumber is displayed



