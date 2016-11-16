Feature: myJumbo.favoriteProducts.feature
 As a user I want to be able to add products to my favorite list and view them there
 so I can reorder the products I like quickly


Scenario: I want favorite products to be displayed and sorted in categories
    Given I am a logged in B2C user
    Then the loggedIn button is displayed
    And I tap the myJumboFloater button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the textPrice view
    And I tap the favorite button
    And I tap the back button
    And I set the value Krieltjes on the search field
    And I tap the enter button
    And I tap the textPrice view
    And I tap the favorite button
    And I tap the back button
    And I set the value Mandarijnen on the search field
    And I tap the enter button
    And I tap the textPrice view
    And I tap the favorite button
    And I tap the back button
    And I set the value Goudfrik on the search field
    And I tap the enter button
    And I tap the textPrice view
    And I tap the favorite button
    And I tap the back button
    And I tap the close button
    And I tap the favoriteProducts button
    Then the aardappelRijstPastaTitle view is displayed
    And the fruitTitle view is displayed
    And the diepvriesTitle view is displayed


Scenario: I want category headers to be hidden when they don't contain products
    Given I am a logged in B2C user
    Then the loggedIn button is displayed
    And I tap the myJumboFloater button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the textPrice view
    And I tap the favorite button
    And I tap the back button
    And I set the value Krieltjes on the search field
    And I tap the enter button
    And I tap the textPrice view
    And I tap the favorite button
    And I tap the back button
    And I set the value Mandarijnen on the search field
    And I tap the enter button
    And I tap the textPrice view
    And I tap the favorite button
    And I tap the back button
    And I set the value Goudfrik on the search field
    And I tap the enter button
    And I tap the textPrice view
    And I tap the favorite button
    And I tap the back button
    And I tap the close button
    And I tap the favoriteProducts button
    And the aardappelRijstPastaTitle view is displayed
    And the fruitTitle view is displayed
    And I tap the textPrice view
    And I tap the favorite button
    And I tap the close button
    And the aardappelRijstPastaTitle view is not displayed
    And the fruitTitle view is displayed