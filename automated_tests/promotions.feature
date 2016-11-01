Feature: promotional items
  As a user 
  I want to see and add promotional items to my shoppinglist

  @smoke_test
  Scenario: I want to check the promotional items
    Given I am logged in B2C user
    When I tap the promotions tab
    When the value geen bestelkosten is displayed
    When the value seizoensaanbiedingen is displayed
    When the value jaaraanbiedinge is displayed
    When the value groot voordeel pakken is displayed
    When the value alle aanbiedingen is displayed

  @smoke_test
  Scenario: I want to check an individual promotion is there and clickable
    Given I am logged in B2C user
    When I tap the promotions tab
    And I tap the firstPromotion button
    Then the addSku button is displayed

