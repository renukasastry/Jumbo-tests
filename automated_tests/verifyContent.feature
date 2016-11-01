Feature: content on pages
  As a user 
  I want to see which orders I have made in the past, so I can use that information for new orders

  @smoke_test
  Scenario: I want to verify the content is correct on the closed orders
    Given I am logged in B2C user and have closed order
    When I click on closedOrder button
    Then the value ophaalinformatie is displayed in the pickup_title field
    And the value Bestelde producten is displayed in the order_details_product_list_title field
    And the value Totaal* is displayed in the order_detail_total_amount_field field
    And the pickup_time field is displayed
    And the pickup_location field is displayed
    And the barcode button is displayed
