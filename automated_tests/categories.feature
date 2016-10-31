Feature: categories on products tab
  As a user 
  I want to be able to order products using the categories feature

  @smoke_test @nuri
  Scenario: I want to browse and verify categories
    Given I have a new registered B2B user
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
#    And I tap the decline button
#    And I tap the next button
    And I tap the tooltip view
    And I tap the tooltip view
    And I tap the tooltip view
    Then loggedIn button is displayed
    When I tap the products tab
    And I tap the broodCerealsBelegCategory button
#    Then the value Bekijk alles is displayed on the category_title field
#    Then the value Brood is displayed in the category_title field
#    Then the value salads is displayed in the category_title field
    And I tap the broodCategory button
    And I tap the broodjesCategory button
    Then the skuPlus button is displayed

