Feature: Samples should not be available to be reordered
  As a user with closed orders including samples and gifts 
  I should not see the samples when I update my order
  so I don't have the impression that I can add samples to my shopping list

  @smoke_test
  Scenario: Samples received from previous orders should not be able to be added to shopping list
    Given I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the login button
    And I set the value 4350@mail.com on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the login button
    And I tap the decline button
    And the orderHistory button is displayed
    And I tap the orderHistory button
    And I tap the orderDetail view
    And the freeGift view is displayed 
    And the sample view is displayed  
    And I tap the reorderProducts button
    Then the freeGift view is displayed 
    And the sample view is not displayed