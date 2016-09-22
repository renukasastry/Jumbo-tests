Feature: Barcode scanner 
  As a user 
  I want to be able to access the barcode scanner screen from the Shopping List, Products, My Jumbo and Recipes. 
  so I can see the content of the screen

  @smoke_test
  Scenario: I want to access the barcode screen from the Shopping List screen and check if all the elements are displayed correctly
    When I login with a new B2C 
    And I tap the shoppinglist button
    And I tap the tooltip view
    And I tap the addProduct button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button 
    And I tap the Allow button
    Then the emptyState image is displayed 
    And the camera view is displayed 

  @smoke_test  
  Scenario: I want to access the barcode scanner from the Products screen and check if the barcode elements are displayed correctly
    When I login with a new B2C 
    And I tap the products button
    And I tap the search button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button 
    And I tap the Allow button
    Then the emptyState image is displayed 
    And the camera view is displayed 


  #Scenario: I want to access the barcode scanner from My Jumbo Screen and check if the barcode elements are displayed correctly
  @smoke_test
  Scenario: I want to access the barcode scanner from the Recipes Screen and check if the barcode elements are displayed correctly
    When I login with a new B2C 
    And I tap the recipes button
    And I tap the search button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button 
    And I tap the Allow button
    Then the emptyState image is displayed 
    And the camera view is displayed 

  @smoke_test
  Scenario: I want to deny access to use the camera and check if a message instructing how to enable it is displayed when I access the barcode scanner screen
    When I login with a new B2C 
    And I tap the shoppinglist button
    And I tap the tooltip view
    And I tap the addProduct button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button 
    And I tap the decline messages button
    Then the instructionMessage view is displayed 
    And the camera view is not displayed 