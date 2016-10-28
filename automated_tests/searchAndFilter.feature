Feature: Search and filter results
  As a user 
  I want to be able to search and filter my results from different tabs

  @smoke_test
  Scenario: I want to search and filter my searches on the myJumbo tab
    Given I am logged in B2E user
    When I tap the myJumboFloater button
    And I set the value kip on the search field
    Then the value kip is displayed on the firstAutosuggestElement button is there
    And I tap the firstAutosuggestElement button
    Then the filter button is displayed
    Then the value producten is displayed on the queryResultText field
    Then the addSku button is displayed
    And I tap the close button
    Then the login view is displayed

  @smoke_test
  Scenario: I want to search and filter my searches on the products tab
    Given I am logged in B2E user
    When I tab the products tab
    And I tap the productsFloater button
    And I set the value kip on the search field
    Then the value kip is displayed on the firstAutosuggestElement button is there
    And I tap the firstAutosuggestElement button
    Then the filter button is displayed
    Then the value producten is displayed on the queryResultText field
    Then the addSku button is displayed
    And I tap the close button
    Then the login view is displayed

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

  Scenario: I want to search and filter my searches on the products tab
    Given I am logged in B2E user
    When I tab the products tab
    And I tap the productsFloater button
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