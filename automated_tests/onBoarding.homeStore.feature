
Feature: Home store selection
  As a user 
  I want to select my JUMBO home store
  So I can see the right price of products

  @smoke_test
  Scenario: List of stores ordered by proximity to GPS location 
    Given I am at the loginScreen
    When I tap the overslaan button
    And I see 'De Laagsterprijsgarantie' screen
    And I tap the location button
    And I tap the Allow button
    Then I see the list of stores ordered my proximity to my GPS location 

  @smoke_test
  Scenario: List of stores ordered by proximity to an address
    Given I am at the loginScreen
    When I tap the overslaan button
    And I see 'De Laagsterprijsgarantie' screen
    And I set 'Amsterdam' on the homeStore field
    And I tap the enter button
    Then I see the list of stores ordered my proximity to 'Amsterdam'

  @smoke_test
  Scenario: Empty state
    Given I am at the loginScreen
    When I tap the overslaan button
    And I see 'De Laagsterprijsgarantie' screen
    And I set '' on the homeStore field
    And I tap the enter button
    Then I see the empty state image

  @smoke_test
  Scenario: Select home store
    Given I am at the loginScreen
    When I tap the overslaan button
    And I see 'De Laagsterprijsgarantie' screen
    And I set 'Amsterdam' on the homeStore field
    And I tap the enter button
    And I see the list of stores ordered my proximity to 'Amsterdam'
    And I tap the first Kies button 
    Then WelcomeScreen is displayed 
    