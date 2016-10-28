Feature: allergy info in detailed product info
  As a user 
  I want to be able to know if I can order certain foods If I have allergies

  @smoke_test
  Scenario: I want to access the barcode screen from the Shopping List screen and check if all the elements are displayed correctly
    Given I am logged in B2C user
    When I tap the myJumboFloater
    And I set mars mini on the search field
    And I tap the productellview button
    Then the addSku button is displayed
    Then the meer informatie over dit product is displayed
    And I tap the detailedInfoProduct button
    Then the value allergiewaarschuwingen is displayed
