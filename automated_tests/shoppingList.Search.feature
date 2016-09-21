Feature: Shopping List Search
  As a user 
  I want to be able to search products and vague terms from the shopping list
  so I can order everything I want

# Anonymous scearios 
  @smoke_test
  Scenario: I want to search and add a vague term to the SL 
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the continue button
    # And I tap the tooltip view
    # And I tap the tooltip view
    And I tap the shopping list button
    And I tap the tooltip view
    And I tap the search button
    And I set the value appel on the search field
    And I tap the enter button
	  And the value appel is displayed on the vague term label
    And I tap the vague term plus button
    And I tap the close button
    Then the value appel is displayed on the vague term label

  @smoke_test
  Scenario: I want to search and add a SKU to the SL 
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the continue button
    # And I tap the tooltip view
    # And I tap the tooltip view
    And I tap the shopping list button
    And I tap the tooltip view
    And I tap the search button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the SKU plus button
    And I tap the close button
    Then the SKU label is displayed

  @smoke_test
  Scenario: I want to search and add multiple items to my shopping list 
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    And I tap the continue button
    # And I tap the tooltip view
    # And I tap the tooltip view
    And I tap the shopping list button
    And I tap the tooltip view
    And I tap the search button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the SKU plus button
    And I tap the search field
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the SKU plus button
    And I tap the close button
    Then the value appel is displayed on the vague term label
    And the SKU label is displayed

# Logged in scenarios
  @smoke_test
  Scenario: I want to search and add a vague term to the SL 
    Given I have a new registered B2C user
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline messages button
    # And I tap the tooltip view
    # And I tap the tooltip view
    And I tap the shopping list button
    And I tap the tooltip view
    And I tap the search button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vague term label
    And I tap the vague term plus button
    And I tap the close button
    Then I the value appel is displayed on the vague term label

  @smoke_test
  Scenario: I want to search and add a SKU to the SL 
    Given I have a new registered B2C user
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline messages button
    # And I tap the tooltip view
    # And I tap the tooltip view
    And I tap the shopping list button
    And I tap the tooltip view
    And I tap the search button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the SKU plus button
    And I tap the close button
    Then the SKU label is displayed

  @smoke_test
  Scenario: I want to search and add multiple items to my shopping list 
    Given I have a new registered B2C user
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline messages button
    # And I tap the tooltip view
    # And I tap the tooltip view
    And I tap the shopping list button
    And I tap the tooltip view
    And I tap the search button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the SKU plus button
    And I tap the search field
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the SKU plus button
    And I tap the close button
    Then the value appel is displayed on the vague term label
    And the SKU label is displayed


# Check for automating the Scanner



