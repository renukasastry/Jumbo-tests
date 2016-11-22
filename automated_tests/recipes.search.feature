Feature: recipes.search.feature
As a user I want to be able to search on the recipe section
so I can find the products and ingredients I want to order

# Add scenario's for searching for recipes
  Scenario: I want to SEARCH for a recipe
    Given I am on the myJumbo screen
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kaas on the search field
    And I tap the enter button
    Then the filter button is displayed
    And the numberOfRecipes view is displayed
    And the firstImage view is displayed
    And the firstCreationTime view is displayed
    And the firstPortionNumber view is displayed
    And I tap the firstImage view
    Then the recipeCard view is displayed

  Scenario: I want to SEARCH for a recipe and get an EMPTYSTATE view if its not there
    Given I am on the myJumbo screen
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value hop on the search field
    And I tap the enter button
    Then the emptyState view is displayed

  Scenario: I want to FILTER my searches on the recipes tab
    Given I am on the myJumbo screen
    When I tap the recipes tab
    And I tap the recipeFloater button
    And I set the value kip on the search field
    And I wait 3 seconds
    Then the firstAutosuggestElement button is displayed
    And I tap the enter button
    Then the filter button is displayed
    And I tap the filter button
    And I tap the hoofdGerechtFilter button
    Then the value Filter is displayed on the checkFilter button
    And I tap the filter button
    And I tap the hoofdGerechtFilter button
    Then the value Filter is displayed on the checkFilter button


  @smoke_test
  Scenario: I want to access the BARCODE SCANNER from the Recipes Screen and check if the barcode elements are displayed correctly
    Given I am on the myJumbo screen
    And I tap the recipes tab
    And I tap the recipeFloater button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button
    And I tap the allow button
    Then the emptyState view is displayed
    And the camera view is displayed



#  @smoke_test
#  Scenario: I want to deny access to use the camera and check if a message instructing how to enable it is displayed when I access the barcode scanner screen
#    Given I am on the myJumbo screen
#    When I tap the shoppingList button
#    And I tap the tooltip view
#    And I tap the addProduct button
#    And the barcodeScanner button is displayed
#    And I tap the barcodeScanner button
#    And I tap the decline button
#    Then the instructionMessage view is displayed
#    Then the camera view is not displayed

#	On iOS it is impossible to check two dialog's behind each other.
#	Therefore the last scenario will always fail on iOS. 
#	We still need to implement a way to check for an 'optional' dialog, this will allow this scenario to pass.
