Feature: Place an order with a vague term, products and a recipe on my shopping list
  As a user
  I want to be able to place an order with various items on my shopping list
  so that I have an open order

  Background:
    Given I have a new registered B2C user

  @oneclick
  Scenario: I want to place an order with a product on my SL
    And I tap the next button
    And I tap the selectStore button
    And I tap the Allow button
    And I tap the select button
    And I tap the welcomeScreen button
    And I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline messages button
    And I tap the tooltip
    And I tap the tooltip
    And I tap the shopping list button
    And I tap the tooltip
    And I tap the addProduct button
    And I set the value bier on the searchItemName field
    And I tap the enter button
    And I tap the vague term button
    And I tap the magnifying glass button
    And I tap the replace button
    And I tap the checkout button
    And I tap the choosePup button
    And I tap the searchPup button
    And I set the value Hapert on the pickUpPointSearch field
    And I tap the enter button
    And I tap the Pup button
    And I tap the first available time slot
    And I tap the payAtPickUp button
    And I tap the OK button
    And I tap the continue button
    And I tap the addProduct button
    And I set the value bier on the searchItemName field
    And I tap the enter button
    And I tap the vague term button
    And I tap the magnifying glass button
    And I tap the replace button
    And I tap the checkout button
    And the new order button is displayed

  @oneclick
  Scenario: I to see if the express checkout is available
    And I tap the next button
    And I tap the selectStore button
    And I tap the Allow button
    And I tap the select button
    And I tap the welcomeScreen button
    And I tap the login button
    And I tap the tooltip 
    And I tap the tooltip 
    And I set the value pricebreakdown@mailinator.com on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the login button
    And I tap the shopping list button
    And I tap the tooltip
    And I tap the checkout button
    And the express checkout button is displayed



