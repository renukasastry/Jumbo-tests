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
    And I tap the continue button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the searchItemName field
    And I tap the enter button
	And the value appel is displayed on the vague term label
    And I tap the vague term plus button
    And I tap the close button
    And I tap the shopping list button
    And I tap the tooltip view
    Then the value appel is displayed on the vague term label

  @smoke_test
  Scenario: I want to search and add a SKU to the SL from the products section search
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the continue button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the searchItemName field
    And I tap the enter button
    And I tap the add product button
    And I tap the close button
    And I tap the shopping list button
    And I tap the tooltip view
    Then the value appel is displayed on the vague term label    
    Then the SKU label is displayed

  @smoke_test
  Scenario: I want to search and add multiple items to the SL from the products section search
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the continue button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the searchItemName field
    And I tap the enter button
    And I tap the add product button
    And I tap the addProduct field
    And I set the value bier on the searchItemName field
    And I tap the enter button
    And I tap the add product button
    And I tap the close button
    And I tap the shopping list button
    And I tap the tooltip view
    Then the value appel is displayed on the vague term label
    And the SKU label is displayed

# Logged in scenarios category browser
  @smoke_test
  Scenario: I want to search and add a vague term to the SL from the products section search 
    Given I have a new registered B2C user
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline messages button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the searchItemName field
    And I tap the enter button
    And the value appel is displayed on the vague term label
    And I tap the vague term plus button
    And I tap the close button
    And I tap the shopping list button
    And I tap the tooltip view
    Then I the value appel is displayed on the vague term label

  @smoke_test
  Scenario: I want to search and add a SKU to the SL from the products section search
    Given I have a new registered B2C user
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline messages button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the searchItemName field
    And I tap the enter button
    And I tap the add product button
    And I tap the close button
    And I tap the shopping list button
    And I tap the tooltip view
    Then the SKU label is displayed

  @smoke_test
  Scenario: I want to search and add multiple items to the SL from the products section search
    Given I have a new registered B2C user
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline messages button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the products button
    And I tap the addProduct button
    And I set the value appel on the searchItemName field
    And I tap the enter button
    And I tap the add product button
    And I tap the addProduct field
    And I set the value bier on the searchItemName field
    And I tap the enter button
    And I tap the add product button
    And I tap the close button
    And I tap the shopping list button
    And I tap the tooltip view
    Then the value appel is displayed on the vague term label
    And the SKU label is displayed


# Check for automating the Scanner
