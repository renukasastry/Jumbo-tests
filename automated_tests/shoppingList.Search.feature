Feature: shoppingList.search.feature
As a user I want to be able to search on the shopping list
so I can find the products and ingredients I want to order


# Logged out scenarios
  @smoke_test
  Scenario: I want to search and add a VAGUE TERM to the SL
    Given I am on the myJumbo screen
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    Then the value appel is displayed on the vagueTermTitle field

  @smoke_test 
  Scenario: I want to search and add a SKU to the SL
    Given I am on the myJumbo screen
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the skuPlus button
    And I tap the close button
    Then the skuCell view is displayed

  @smoke_test
  Scenario: I want to search and add VAGUE TERM AND SKU to my shopping list
    Given I am on the myJumbo screen
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value appel is displayed on the vagueTermTitle field
    And the skuCell view is displayed

# Logged in scenarios
  @smoke_test 
  Scenario: I want to search and add a VAGUE TERM to the SL
    Given I am a logged in B2C user
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    Then the value appel is displayed on the vagueTermTitle field

  @smoke_test
  Scenario: I want to search and add a SKU to the SL
    Given I am a logged in B2C user
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the skuPlus button
    And I tap the close button
    Then the skuCell view is displayed

  @smoke_test 
  Scenario: I want to search and add VAGUE TERM AND SKU to my shopping list
    Given I am a logged in B2C user
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value appel is displayed on the vagueTermTitle field
    And the skuCell view is displayed

  @smoke_test
  Scenario: I want to access the BARCODE SCREEN from the Shopping List screen and check if all the elements are displayed correctly
    Given I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the myJumboFloater button
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
