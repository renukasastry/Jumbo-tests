Feature: products.search.feature
As a user I want to be able to search on the products section
so I can find the products and ingredients I want to order



# Anonymous scearios
  @smoke_test
  Scenario: I want to search and add a vague term to the SL from the products section search
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products tab
    And I tap the productFloater button
    And I set the value appel on the search field
    And I tap the enter button
	And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTermTitle field

  @smoke_test
  Scenario: I want to search and add a SKU to the SL from the products section search
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products tab
    And I tap the productFloater button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the skuPlus button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTermTitle field
    Then the skuCell view is displayed

  @smoke_test
  Scenario: I want to search and add multiple items(vague term and normal sku) to the SL from the products section search
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products tab
    And I tap the productFloater button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    And I tap the productFloater button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTermTitle field
    And the skuCell view is displayed

# Logged in scenarios
  @smoke_test 
  Scenario: I want to search and add a vague term to the SL from the products section search 
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the products tab
    And I tap the productFloater button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTermTitle field


  @smoke_test
  Scenario: I want to search and add a SKU to the SL from the products section search
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the products tab
    And I tap the productFloater button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the skuPlus button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTermTitle field
    Then the skuCell view is displayed

  @smoke_test
  Scenario: I want to search and add multiple items to the SL from the products section search
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the products tab
    And I tap the productFloater button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    And I tap the productFloater button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTermTitle field
    And the skuCell view is displayed


  Scenario: I want to search and filter my searches on the recipes tab
    Given I am logged in B2E user
    When I tab the recipes tab
    And I tap the recipesFloater button
    And I set the value kip on the search field
    Then the value kip is displayed on the firstAutosuggestElement button is there
    And I tap the firstAutosuggestElement button
    Then the filter button is displayed
    And I tap the filter button
    And I tap the jumboFilter button
    Then the value filter(1) is displayed on the filter button
    And I tap the filter button
    And I tap the jumboFilter button
    Then the value filter is displayed on the filter button


  @smoke_test
  Scenario: I want to access the barcode scanner from the Products screen and check if the barcode elements are displayed correctly
    Given I am on the myJumbo screen
    When I tap the products tab
    And I tap the productFloater button
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
