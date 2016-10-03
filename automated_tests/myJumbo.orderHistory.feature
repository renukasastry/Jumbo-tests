Feature: View and amend orders
  As a user
  I want to be able to view and amend my orders
  so I have a clear overview of my orders

  @smoke_test
  Scenario: I want to amend my order from the order history as a B2C user
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And I set the value bier on the search field
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
    And I tap the addGroceries button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value Nieuw in je bestelling is displayed on the newSection view
    # Add steps to actually change the order

  @smoke_test
  Scenario: I want to amend my order from the order detail page as a B2C user
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And I set the value bier on the search field
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
    And I tap the orderDetail button
    And I tap the editOrder button
    And I tap the addProduct button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value Nieuw in je bestelling is displayed on the newSection view
    # Add steps to actually change the order


  @smoke_test
  Scenario: I want to amend my order from the order history as a B2B user
    Given I have a new registered B2B user
    And I am on the myJumbo screen
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And I set the value bier on the search field
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
    And I tap the addGroceries button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value Nieuw in je bestelling is displayed on the newSection view
    # Add steps to actually change the order


  @smoke_test
  Scenario: I want to amend my order from the order detail page as a B2B user
    Given I have a new registered B2B user
    And I am on the myJumbo screen
    When I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the decline button
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the addProduct button
    And I set the value bier on the search field
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
    And I tap the orderDetail button
    And I tap the editOrder button
    And I tap the addProduct button
    And I tap the addProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    Then the value Nieuw in je bestelling is displayed on the newSection view
    # Add steps to actually change the order


  # @smoke_test
  # Scenario: I want to amend my order from the order history as a B2B Sub user
  #  	When I tap the login button
  #  	And I set the value Condigne+1@gmail.com on the emailAddress field
  #  	And I set the value cTsKYxMpZ1sAAAFTK6U3sHRp on the password field
  #  	And I tap the login button
  #  	And I tap the decline button
  #  	And I tap the next button    
  #  	And I tap the tooltip view
  #   And I tap the tooltip view
  #   And I tap the tooltip view
  #   And I tap the shoppingList button
  #   And I tap the tooltip view
  #   And I tap the addProduct button
  #   And I set the value bier on the search field
  #   And I tap the enter button
  #   And I tap the skuPlus button
  #   And I tap the close button    
  #   And I tap the checkout button
  #   And I tap the choosePup button
  #   And I tap the searchPup button
  #   And I set the value Hapert on the pickUpPointSearch field
  #   And I tap the enter button
  #   And I tap the pup button
  #   And I tap the firstAvailableTimeSlot button
  #   And I tap the payAtPickUp button
  #   And I tap the ok button
  #   And I tap the next button
  #   And I tap the back button
  #   And I tap the orderHistory button
  #   And I tap the addGroceries button
  #   And I tap the addProduct button
  #   And I set the value appel on the search field
  #   And I tap the enter button
  #  	And I tap the skuPlus button
  #   And I tap the close button
  #   Then the newSection view is displayed  
  #   # Add steps to actually change the order
  #   # Add steps to cancel the order    

  #    @smoke_test
  # Scenario: I want to amend my order from the order detail page as a B2B Sub user
  #  	When I tap the login button
  #  	And I set the value Condigne+1@gmail.com on the emailAddress field
  #  	And I set the value cTsKYxMpZ1sAAAFTK6U3sHRp on the password field
  #  	And I tap the login button
  #  	And I tap the decline button
  #  	And I tap the next button
  #   And I tap the tooltip view
  #   And I tap the tooltip view
  #   And I tap the tooltip view
  #   And I tap the shoppingList button
  #   And I tap the tooltip view
  #   And I tap the addProduct button
  #   And I set the value bier on the search field
  #   And I tap the enter button
  #   And I tap the skuPlus button
  #   And I tap the close button    
  #   And I tap the checkout button
  #   And I tap the choosePup button
  #   And I tap the searchPup button
  #   And I set the value Hapert on the pickUpPointSearch field
  #   And I tap the enter button
  #   And I tap the pup button
  #   And I tap the firstAvailableTimeSlot button
  #   And I tap the payAtPickUp button
  #   And I tap the ok button
  #   And I tap the next button
  #   And I tap the back button
  #   And I tap the orderHistory button
  #   And I tap the orderDetail button
  #   And I tap the editOrder button
  #   Then the editOrderActionSheet view is displayed
  #   And I tap the addProduct button
  #   And I set the value appel on the search field
  #   And I tap the enter button
  #  	And I tap the skuPlus button
  #   And I tap the close button
  #   Then the newSection view is displayed  
  #   # Add steps to actually change the order
  #   # Add steps to cancel the order


