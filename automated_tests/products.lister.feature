Feature: products.lister.feature
  As a user I want my products lister to display the products and be able to add them to the SL directly from the lister so that I can quickly make my SL and start ordering

Background:
    Given I am a logged in B2C user
#    And I tap the next button
    Then loggedIn button is displayed
    When I tap the products tab
    And I tap the broodCerealsBelegCategory button
    Then I tap the bekijkAllesCategory view	


  @smoke_test
  Scenario: I want to check the elements on the product lister page
    Then the skuPlus button is displayed
    And the filter button is displayed
    And the firstImage view is displayed
    And the firstPrice view is displayed
    And the firstTitle view is displayed
    And the firstQuantity view is displayed
    And the productFloater button is displayed

  @smoke_test
  Scenario: I want to check the elements on the product lister page
    Then I tap the filter button
    And I tap the aanbiedingenFilter view
    Then the priceDisclaimer view is displayed

 @smoke_test
  Scenario: I want to check the filter option on the product lister page
  	And I tap the filter button
  	And I tap the aanbiedingenFilter view
  	Then the value Filter (1) is displayed on the checkFilter button

 @smoke_test
  Scenario: I want to add products to the SL from the product lister page
  	And I tap the skuPlus button
    Then the firstProductQuantitySelection button is displayed
    And the imageCheckMark view is displayed
  	And I tap the shoppingList button
    And I tap the tooltip view
    Then the firstProductQuantitySelection button is displayed

 @smoke_test @g
  Scenario: I want to change the quantity of a products that is on my SL from the product lister page
   And I tap the skuPlus button
   And I tap the increaseQuantity button
   And I tap the increaseQuantity button
   And I tap the increaseQuantity button
#    And I tap the decreaseQuantity button
#    Then the value 3 is displayed on the firstProductAmount field


