Feature: Home store selection
  As a user 
  I want to select my JUMBO home store
  So I can see the right price of products

  @smoke_test
  Scenario: List of stores should be ordered by proximity to GPS location 
    And I tap the next button
    And I tap the location button
    And I tap the Allow button
    Then the listOfStores view is displayed

  @smoke_test
  Scenario: List of stores should be ordered by proximity to the searched address
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    Then the selectStoreCell view is displayed

  @smoke_test
  Scenario: Empty state screen should be displayed when the searched address returns no matches
    When I tap the next button
    And I set the value Austria on the homeStore field
    And I tap the enter button
    Then the emptyState view is displayed

  @smoke_test
  Scenario: Welcome screen should be displayed after selecting a home store
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And the listOfStores view is displayed
    And I tap the selectStoreCell view 
    Then the welcomeScreen view is displayed