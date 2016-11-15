Feature: products.categoryBrowser.feature
  As a user I want to be able to browse the categories
  so I can find the products that I'm looking for


# Add scenario for custom assortment

  @smoke_test
  Scenario: I want to BROWSE and VERIFY categories
    Given I am a logged in B2C user
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

