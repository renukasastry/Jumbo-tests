Feature: products.pdp.feature
	As a user I want to be able to see all the details of a products
	So I can make an informed decision on what to order

# Add scenario's for checkingt the elements/content on the PDP for regular products
# Add scenario's for checkingt the elements/content on the PDP for multipack products
	
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
    Then loggedIn button is displayed
    When I tap the myJumboFloater button
    And I set the value mars mini on the search field
    And I tap the enter button
    Then the skuPlus button is displayed
    And I tap the textPrice field
    When I tap the moreInfo button
    Then the allergyWarning field is displayed