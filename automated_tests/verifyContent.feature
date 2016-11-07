Feature: content on pages
  As a user I want to see what I ordered in the past
  so I can use that information for a new order

  @smoke_test
  Scenario: I want to verify the content is correct on the closed orders
    Given I am logged in as a B2C user with an order which is ready to be picked up
    And I tap the orderHistory button
    When I tap the orderDetail button
    Then the value ophaalinformatie is displayed on the pickup_title field
    And the value Bestelde producten is displayed on the order_details_product_list_title field
    And the value Totaal is displayed on the order_detail_total_amount_field field
    And the pickup_time field is displayed
    And the pickup_location field is displayed
    And the barcode button is displayed
