Feature: myJumbo.search.feature
As a user I want to be able to search on the My Jumbo
so I can find the products and ingredients I want to order



 Scenario: I want access the SEARCH functionality as a logged in user
   Given I am a logged in B2C user
   Then loggedIn button is displayed
   When I tap the myJumboFloater button
   Then the search field is displayed


  @smoke_test
  Scenario: I want to FILTER my searches on the myJumbo tab
    Given I am logged in B2C user
    When I tap the myJumboFloater button
    And I set the value kip on the search field
    Then the value kip is displayed on the firstAutosuggestElement button
    And I tap the firstAutosuggestElement button
    Then the filter button is displayed
    Then the value producten is displayed on the queryResultText field
    Then the addSku button is displayed
    And I tap the close button
    Then the login view is displayed


 Scenario: I want access the SEARCH functionality as a logged out user
   Given I am on the myJumbo screen
   When I tap the myJumboFloater button
   Then the search field is displayed

  @smoke_test
  Scenario: I want to access the BARCODE SCANNER from the My Jumbo and check if the barcode elements are displayed correctly
    Given I am on the myJumbo screen
   	When I tap the myJumboFloater button
    And the barcodeScanner button is displayed
    And I tap the barcodeScanner button
    And I tap the allow button
    Then the emptyState view is displayed
    And the camera view is displayed

#  @smoke_test
#  Scenario: I want to deny access to use the camera and check if a message instructing how to enable it is displayed when I access the barcode scanner screen
#    Given I am on the myJumbo screen
#    When I tap the shoppingList button
#    And I tap the tooltip view
#    And I tap the addProduct button
#    And the barcodeScanner button is displayed
#    And I tap the barcodeScanner button
#    And I tap the decline button
#    Then the instructionMessage view is displayed
#    Then the camera view is not displayed

#	On iOS it is impossible to check two dialog's behind each other.
#	Therefore the last scenario will always fail on iOS. 
#	We still need to implement a way to check for an 'optional' dialog, this will allow this scenario to pass.
