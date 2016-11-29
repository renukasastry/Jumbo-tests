Feature: products.pdp.feature
	As a user I want to be able to see all the details of a products
	So I can make an informed decision on what to order

# Add scenario's for checking the elements/content on the PDP for regular products
# Add scenario's for checking the elements/content on the PDP for multipack products
	
  @smoke_test
  Scenario: I want to see the ALLERGY warning in the detailedProductInfo
    Given I am a logged in B2C user
#    And I tap the next button
    Then loggedIn button is displayed
    When I tap the myJumboFloater button
    And I set the value mars mini on the search field
    And I tap the enter button
    Then the skuPlus button is displayed
    And I tap the textPrice view
    Then the allergyWarning field is displayed
