Feature: products.categoryBrowser.feature
  As a user I want to be able to browse the categories
  so I can find the products that I'm looking for


  @smoke_test
  Scenario: I want to browse and verify categories
    Given I have a new registered B2B user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
#    And I tap the next button
    Then loggedIn button is displayed
    When I tap the products tab
    And I tap the broodCerealsBelegCategory button
    Then I tap the bekijkAllesCategory view
    Then the skuPlus button is displayed
    And I tap the back button
    And I tap the broodCategory button
    And I tap the broodjesCategory button
    Then the skuPlus button is displayed

