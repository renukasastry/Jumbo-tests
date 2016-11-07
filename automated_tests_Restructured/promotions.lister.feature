Feature: promotions.lister.feature
As a user I want to see all the available promotions
so I get a clear overview of what is and will be on promotion


  @smoke_test
  Scenario: I want to check the promotional items
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    Then loggedIn button is displayed
    When I tap the promotions tab
    When the value geen bestelkosten is displayed on the geenBestelkosten field
    When the value seizoensaanbiedingen is displayed on the seizoensAanbiedingen field
    When the value jaaraanbiedingen is displayed on the jaarAanbiedingen field
    When the value groot voordeel pakken is displayed on the grootVoordeelPakken field
    Then the value alle aanbiedingen is displayed on the promotionHeader field


