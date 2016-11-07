Feature: promotions.detail.feature
As a user I want to be able to see the details of a promotion
so I can see on which products the promotion applies


  @smoke_test
  Scenario: I want to check an individual promotion is there and clickable
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    When I tap the promotions tab
    And I tap the firstPromotion view
# Previous step always fails because there are no promotions available on SIT
    Then the skuPlus button is displayed

