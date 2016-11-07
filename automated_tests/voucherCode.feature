Feature: vouchercode
  As a user 
  I want to be able to add vouchers to my orders, so I can get a discount

  @smoke_test
  Scenario: I want to place an order add a vouchercode en get discount
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
#    And I tap the next button
    Then loggedIn button is displayed
    When I tap the shoppingList button
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
    And I tap the firstAvailableTimeSlot button
    And I tap the payAtPickUp button
    And I tap the addVoucherCode button
    And I set the value ICE2 on the voucherCode field
    And I tap the addVoucherCode button
    And the value 1 euro korting is displayed on the order_detail_discount_title_field field
    And the value Servicecode: ICE2 is displayed on the order_detail_discount_voucher_code field
    And the value -1,00 is displayed on the order_detail_discount_price field
    And I tap the payAtPickUp button
    Then the payment_confirmation_order_parent(thankyouPage) view is displayed
