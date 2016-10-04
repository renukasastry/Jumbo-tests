Feature: Products Search
  As a user 
  I want to be able to search products and vague terms from the products section
  so I can order everything I want

# Anonymous scearios category browser
  @smoke_test
  Scenario: I want to search and add a vague term to the SL from the products section search
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
	And the value appel is displayed on the vagueTerm label
    And I tap the vagueTermPlus button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTerm label

  @smoke_test
  Scenario: I want to search and add a SKU to the SL from the products section search
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the addProduct button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTerm label    
    Then the skuCell view is displayed

  @smoke_test
  Scenario: I want to search and add multiple items to the SL from the products section search
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the addProduct button
    And I tap the addProduct field
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the addProduct button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTerm label
    And the skuCell view is displayed

# Logged in scenarios category browser
  @smoke_test
  Scenario: I want to search and add a vague term to the SL from the products section search 
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTerm label
    And I tap the vagueTermPlus button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then I the value appel is displayed on the vagueTerm label

  @smoke_test
  Scenario: I want to search and add a SKU to the SL from the products section search
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the addProduct button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the skuCell view is displayed

  @smoke_test
  Scenario: I want to search and add multiple items to the SL from the products section search
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the addProduct button
    And I tap the addProduct field
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the addProduct button
    And I tap the close button
    And I tap the shoppingList button
    And I tap the tooltip view
    Then the value appel is displayed on the vagueTerm label
    And the skuCell view is displayed

# # Anonymous scearios product lister
#   @smoke_test
#   Scenario: I want to search and add a vague term to the SL from the products section search
#     When I tap the next button
#     And I set the value Amsterdam on the homeStore field
#     And I tap the enter button
#     And I tap the selectStoreCell view 
#     And I tap the next button
#     And I tap the tooltip view
#     And I tap the tooltip view
#     And I tap the products button
#     And I tap the firstCategory button
#     And I tap the viewEverything button
#     And I see the productLister view
#     And I tap the addProduct button
#     And I set the value appel on the search field
#     And I tap the enter button
#     And the value appel is displayed on the vagueTerm label
#     And I tap the vagueTermPlus button
#     And I tap the close button
#     And I tap the shoppingList button
#     And I tap the tooltip view
#     Then the value appel is displayed on the vagueTerm label

#   @smoke_test
#   Scenario: I want to search and add a SKU to the SL from the products section search
#     When I tap the next button
#     And I set the value Amsterdam on the homeStore field
#     And I tap the enter button
#     And I tap the selectStoreCell view 
#     And I tap the next button
#     And I tap the tooltip view
#     And I tap the tooltip view
#     And I tap the products button
#     And I tap the firstCategory button
#     And I tap the viewEverything button
#     And I see the productLister view
#     And I tap the addProduct button
#     And I set the value appel on the search field
#     And I tap the enter button
#     And I tap the addProduct button
#     And I tap the close button
#     And I tap the shoppingList button
#     And I tap the tooltip view
#     Then the value appel is displayed on the vagueTerm label    
#     Then the skuCell view is displayed

#   @smoke_test
#   Scenario: I want to search and add multiple items to the SL from the products section search
#     When I tap the next button
#     And I set the value Amsterdam on the homeStore field
#     And I tap the enter button
#     And I tap the selectStoreCell view 
#     And I tap the next button
#     And I tap the tooltip view
#     And I tap the tooltip view
#     And I tap the products button
#     And I tap the firstCategory button
#     And I tap the viewEverything button
#     And I see the productLister view
#     And I tap the addProduct button
#     And I set the value appel on the search field
#     And I tap the enter button
#     And I tap the addProduct button
#     And I tap the addProduct field
#     And I set the value bier on the search field
#     And I tap the enter button
#     And I tap the addProduct button
#     And I tap the close button
#     And I tap the shoppingList button
#     And I tap the tooltip view
#     Then the value appel is displayed on the vagueTerm label
#     And the skuCell view is displayed

# # Logged in scenarios category Lister
#   @smoke_test
#   Scenario: I want to search and add a vague term to the SL from the products section search 
#     Given I have a new registered B2C user
#     When I tap the login button
#     And I set the property username on the emailAddress field
#     And I set the property password on the password field
#     And I tap the login button
#     And I tap the decline button
#     And I tap the tooltip view
#     And I tap the tooltip view
#     And I tap the products button
#     And I tap the firstCategory button
#     And I tap the viewEverything button
#     And I see the productLister view
#     And I tap the addProduct button
#     And I set the value appel on the search field
#     And I tap the enter button
#     And the value appel is displayed on the vagueTerm label
#     And I tap the vagueTermPlus button
#     And I tap the close button
#     And I tap the shoppingList button
#     And I tap the tooltip view
#     Then I the value appel is displayed on the vagueTerm label

#   @smoke_test
#   Scenario: I want to search and add a SKU to the SL from the products section search
#     Given I have a new registered B2C user
#     When I tap the login button
#     And I set the property username on the emailAddress field
#     And I set the property password on the password field
#     And I tap the login button
#     And I tap the decline button
#     And I tap the tooltip view
#     And I tap the tooltip view
#     And I tap the products button
#     And I tap the firstCategory button
#     And I tap the viewEverything button
#     And I see the productLister view
#     And I tap the addProduct button
#     And I set the value appel on the search field
#     And I tap the enter button
#     And I tap the addProduct button
#     And I tap the close button
#     And I tap the shoppingList button
#     And I tap the tooltip view
#     Then the skuCell view is displayed

#   @smoke_test
#   Scenario: I want to search and add multiple items to the SL from the products section search
#     Given I have a new registered B2C user
#     When I tap the login button
#     And I set the property username on the emailAddress field
#     And I set the property password on the password field
#     And I tap the login button
#     And I tap the decline button
#     And I tap the tooltip view
#     And I tap the tooltip view
#     And I tap the products button
#     And I tap the firstCategory button
#     And I tap the viewEverything button
#     And I see the productLister view
#     And I tap the addProduct button
#     And I set the value appel on the search field
#     And I tap the enter button
#     And I tap the addProduct button
#     And I tap the addProduct field
#     And I set the value bier on the search field
#     And I tap the enter button
#     And I tap the addProduct button
#     And I tap the close button
#     And I tap the shoppingList button
#     And I tap the tooltip view
#     Then the value appel is displayed on the vagueTerm label
#     And the skuCell view is displayed

# # Check for automating the Scanner
