Feature: change quantities of ordered products
  As a user 
  I want to be able to change the quantity of the number of products I ordered when the order is still open

  @smoke_test
  Scenario: I want to access the barcode screen from the Shopping List screen and check if all the elements are displayed correctly
    Given I am logged in B2C user and have open order
    When I tap myOrders button
    And I tap the openOrder button
    And I tap the changeOrder button
    And I tap the actionsheetAddproduct button
    And I tap the firstProductQuantitySelection button
    And I tap the increaseQuantity button
    And I tap the increaseQuantity button
    And I tap the increaseQuantity button
    And I tap the increaseQuantity button
    And I tap the next button
    Then the value 5 is displayed in the firstProductAmountField
    And I tap the payAtPickup button
    Then the value 5 is displayed in the firstProductAmountField

  @smoke_test
  Scenario: I want to access the barcode scanner from the Products screen and check if the barcode elements are displayed correctly
    Given I am logged in B2C user and have an open order
    When I tap myOrders button
    And I tap the openOrder button
    And I tap the changeOrder button
    And I tap the actionsheetAddproduct button
    Then the value nieuw in je bestelling is not displayed in the NieuwInJeBestelling field
    And I tap the changeOrderFloater button
    And I set the value kaas in the changeOrder field
    And I tap the addSku button
    And I tap the close button
    Then the value nieuw in je bestelling is displayed in the NieuwInJeBestelling field
