Feature: Free gifts should not be displayed on order update screen
  As a user
  I should not see the free gifts and samples when I update my order
  so I don't have the impression that I can increase the amount of free gifts and samples I'll get

  Background:
    Given I have a new registered B2C user

  @smoke_test @thomas
  Scenario: I want to updated an order and not see the free gifts and samples on order update screen
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And I set the value 74004PAK on the search field
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
    And I tap the ok button
    And I tap the next button
    And I tap the back button
    And I tap the orderHistory button
    And I tap the lastPlacedOrder view 
    And I tap the editOrder button 
    And I tap the addProductsActionSheet
    Then the freeGift view is not displayed
    And the sample view is not displayed