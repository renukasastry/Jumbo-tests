Feature: Barcode scanner 
  As a user 
  I want to be able to access the barcode scanner screen from the Shopping List, Products, My Jumbo and Recipes. 
  so I can see the content of the screen

  @smoke_test
  Scenario: I want to access the barcode screen from the Shopping List screen and check if all the elements are displayed correctly
    Given I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button 
    And I tap the allow button
    Then the emptyState view is displayed 
    And the camera view is displayed 

  @smoke_test  
  Scenario: I want to access the barcode scanner from the Products screen and check if the barcode elements are displayed correctly
    Given I am on the myJumbo screen
    When I tap the products button
    And I tap the search button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button 
    And I tap the allow button
    Then the emptyState view is displayed 
    And the camera view is displayed 

  @smoke_test
  Scenario: I want to access the barcode scanner from the Recipes Screen and check if the barcode elements are displayed correctly
    Given I am on the myJumbo screen
    And I tap the recipes button
    And I tap the search button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button 
    And I tap the allow button
    Then the emptyState view is displayed 
    And the camera view is displayed 

  @smoke_test
  Scenario: I want to deny access to use the camera and check if a message instructing how to enable it is displayed when I access the barcode scanner screen
    Given I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button 
    And I tap the decline button
    Then the instructionMessage view is displayed
    Then the camera view is not displayed 

#	On iOS it is impossible to check two dialog's behind each other.
#	Therefore the last scenario will always fail on iOS. 
#	We still need to implement a way to check for an 'optional' dialog, this will allow this scenario to pass.