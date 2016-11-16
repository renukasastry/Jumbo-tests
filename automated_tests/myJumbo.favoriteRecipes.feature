Feature: myJumbo.favoriteRecipes.feature
  As a user I want to add, see and remove my favourites recipes

# Add scenario's for adding and removing favorite recipes
  @nuri
  Scenario: I want ADD a recipe to my favourites
    Given I am a logged in B2C user
    When I tap the recipes tab
    And I tap the firstImage view
    And I tap the addToFavourite button
    And I tap the close button
    And I tap the myJumbo tab
    Then the favouriteRecipes view is displayed
    And I tap the favouriteRecipes view
#    Then the recipeFavouriteHeader view is displayed
    And the imageRecipe view is displayed

  @nuri
  Scenario: I want REMOVE a recipe from my favourites
    Given I am a logged in B2C user
    When I tap the recipes tab
    And I tap the firstImage view
    And I tap the addToFavourite button
    And I tap the close button
    And I tap the myJumbo tab
    Then the favouriteRecipes view is displayed
    And I tap the favouriteRecipes view
#    Then the recipeFavouriteHeader view is displayed
    And the imageRecipe view is displayed
    And I tap the imageRecipe view
    And I tap the addToFavourite button
    And I tap the close button
    Then the emptyState view is displayed
    And the emptyImage view is displayed
    And the emptyMessage view is displayed
