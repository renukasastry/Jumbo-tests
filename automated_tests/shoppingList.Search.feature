Feature: Shopping List Search
  As a user 
  I want to be able to search products and vague terms from the shopping list
  so I can order everything I want

  @smoke_test
  Scenario: I want to search and add a vague term to the SL 
    When I tap the overslaan button
    And I set teh value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the Kies button
    And I tap the Ga verder button
    And I tap the shopping list button
    And I tap the screen
    And I tap the search button
    And I set the value appel on the search field
    And I tap the enter button
	And the value appel is displayed on the vague term label
    And I tap the vague term plus button
    And I tap the close button
    Then I the value appel is displayed on the vague term label

  @smoke_test
  Scenario: I want to search and add a SKU to the SL 
    When I tap the overslaan button
    And I set teh value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the Kies button
    And I tap the Ga verder button
    And I tap the shopping list button
    And I tap the screen
    And I tap the search button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the SKU plus button
    And I tap the close button
    Then the SKU label is displayed

  # @smoke_test
  # Scenario: I want to search and add multiple items to my shopping list 
  #   When I tap the overslaan button
  #   And I set teh value Amsterdam on the homeStore field
  #   And I tap the enter button
  #   And I tap the Kies button
  #   And I tap the Ga verder button
  #   And I tap the shopping list button
  #   And I tap the screen
  #   And I tap the search button
  #   And I set the value appel on the search field
  #   And I tap the enter button
  #   And I tap the SKU plus button
  #   And I tap the search field
  #   And I set the value bier on the search field
  #   And I tap the enter button
  #   And I tap the SKU plus button
  #   And I tap the close button
  #   Then the value appel is displayed on the vague term label

# Add a logged in version of this scenario
# Check for automating the Scanner



