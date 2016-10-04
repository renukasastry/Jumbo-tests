Feature: MyJumbo Add Products
 As a user
 I want to be able to add products to my shopping list from myJumbo
 so I can build my order

 Scenario: I want access the search functionality as a logged in user
   Given I have a new registered B2C user
   And I am on the myJumbo screen
   When I tap the registerOrLogin button
   And I tap the login button
   And I set the property username on the emailAddress field
   And I set the property password on the password field
   And I tap the login button
   And I tap the decline button
   Then loggedIn button is displayed
   When I tap the addProduct button
   Then the search field is displayed
   
 Scenario: I want access the search functionality as a logged out user
   Given I am on the myJumbo screen
   When I tap the addProduct button
   Then the search field is displayed