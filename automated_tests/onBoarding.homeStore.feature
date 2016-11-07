Feature: Home store selection
  As a user 
  I want to select my JUMBO home store
  So I can see the right price of products

  @smoke_test @nuri
  Scenario: List of stores should be ordered by proximity to GPS location
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I tap the useLocation button
    And I tap the allow button
    Then the selectStoreCell view is displayed

  @smoke_test @nuri
  Scenario: List of stores should be ordered by proximity to the searched address
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    Then the selectStoreCell view is displayed

  @smoke_test @nuri
  Scenario: Empty state screen should be displayed when the searched address returns no matches
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I set the value gdyihjf on the homeStore field
    And I tap the enter button
    Then the emptyState view is displayed

  @smoke_test @nuri
  Scenario: Welcome screen should be displayed after selecting a home store
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    Then the welcomeScreen view is displayed

   @smoke_test @nuri
   Scenario: I want to go through the onboarding as an anonymous user
     Given the onboardingTitle view is displayed
     And the registerOrLogin button is displayed
     When I tap the next button
     And I set the value Amsterdam on the homeStore field
     And I tap the enter button
     And I tap the selectStoreCell view
     Then the welcomeScreen view is displayed
     And I tap the next button
     And I tap the tooltip view
     And I tap the tooltip view
     And I tap the tooltip view
     Then the registerOrLogin button is displayed