Feature: allergy info in detailed product info
  As a user 
  I want to be able to know if I can order certain foods If I have allergies

  @smoke_test
  Scenario: I want to see the allergy warning in the detailedProductInfo
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the registerOrLogin button
    And I tap the actionsheetLogin button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
#    And I tap the next button
#    And I tap the tooltip view
#    And I tap the tooltip view
#    And I tap the tooltip view
    Then loggedIn button is displayed
    When I tap the myJumboFloater button
    And I set the value mars mini on the search field
    And I tap the enter button
    Then the skuPlus button is displayed
    And I tap the textPrice field
    When I tap the moreInfo button
    Then the allergyWarning field is displayed