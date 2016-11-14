Feature: myJumbo.favoriteRecipes.feature
  As a user I want to add, see and remove my favourites recipes

# Add scenario's for adding and removing favorite recipes

  Scenario: I want add and remove a recipe to my favourites
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    And the favouriteRecipes view is not displayed
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    Then the loggedIn button is displayed
    And I tap the recipes tab
    And I tap the firstImage button
    And I tap the addToFavourite button
    And I tap the close button
    And I tap the myJumbo tab
    Then the favouriteRecipes view is displayed
    And I tap the favouriteRecipes view
    Then the recipeFavouriteHeader view is displayed
    And the imageRecipe view is displayed
    And I tap the imageRecipe view
    And I tap the addToFavourite button
    And I tap the close button
    Then the emptyState view is displayed
    And the imageEmpty is displayed
    And the textEmpty is displayed



