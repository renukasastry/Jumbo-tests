Feature: categories on products tab
  As a user 
  I want to be able to order products using the categories feature

  @smoke_test
  Scenario: I want to browse and verify categories
    Given I am logged in B2B user
    When I tap the products tab
    And I tap the BroodCerealsBeleg button
    Then the value Bekijk alles is displayed in the category_title field
    Then the value Brood is displayed in the category_title field
    Then the value salads is displayed in the category_title field
    And I tap the broodjesCategory button
    Then the addSku button is displayed

