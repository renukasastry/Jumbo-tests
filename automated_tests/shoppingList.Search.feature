Feature: Shopping List Search
  As a user
  I want to be able to search products and vague terms from the shopping list
  so I can order everything I want

  @smoke_test
  Scenario: I want to search and add a vague term to the SL
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
  Scenario: I want to search and add multiple items to my shopping list
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
  Scenario: I want to search and add a vague term to the SL
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
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
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
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
  Scenario: I want to search and add multiple items to my shopping list
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
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
