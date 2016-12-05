Feature: vouchercode
  As a user 
  I want to be able to add vouchers to my orders, so I can get a discount

  @smoke_test
  Scenario: I want to place an order add a vouchercode en get discount
    Given I am logged in B2C user
    When And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    And I tap the choosePup button
    And I tap the allow button
    And I tap the searchPup button
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the pup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I tap the addVoucherCode button
    And I set the value ICE2 on the voucherCode field
    And I tap the addVoucherCode button
    And I verify the value 1 euro korting is displayed in the order_detail_discount_title_field
    And I verify the value Servicecode: ICE2 is displayed in the order_detail_discount_voucher_code
    And I verify the value -1,00 is displayed in the order_detail_discount_price
    And I tap the payAtPickUp button
    Then the payment_confirmation_order_parent(thankyouPage) is displayed
