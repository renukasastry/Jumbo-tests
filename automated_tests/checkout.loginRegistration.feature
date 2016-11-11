Feature: checkout.loginRegistration.feature

# go through the login and registration flows via checkout

  Scenario: go to checkout as anonymous user and then register as B2C and continue checkout
    Given I have a new user email address
    And I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    Then the accountLogin view is displayed
    And I tap the registerb2c button
    And I tap the ok button
    And I set the property newUsername on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the registerCredentials button
    And I set the value Cube on the name field
    And I set the value the on the insertion field
    And I set the value Cubie on the surname field
    And I set the value 6123456789 on the phoneNumber field
    And I tap the registerName button
    And I set the value 1083HA on the postalCode field
    And I set the value 2 on the houseNumber field
    And I tap the validateAddressLookUp button
    And I tap the termsAndConditions checkbox
    And I tap the registerDelivery button
    And I tap the decline button
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page


  Scenario: go to checkout as anonymous user and then register as B2B and continue checkout
    Given I am on the myJumbo screen
    And I have a new user email address
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    Then the accountLogin view is displayed
    And I tap the registerb2b button
    And I tap the ok button
    And I set the property newUsername on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the registerCredentials button
    And I set the value 34359257 on the kvk field
    And I tap the registerKvkLookUp button
    And I tap the registerKvk button
    And I set the value Cube on the name field
    And I set the value the on the insertion field
    And I set the value Cubie on the surname field
    And I set the value 6123456789 on the phoneNumber field
    And I tap the registerName button
    And I tap the saveInvoiceAddress button
    And I tap the termsAndConditions checkbox
    And I tap the registerDelivery button
    And I tap the paymentInfoOk button
    And I tap the decline button
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page


  Scenario: go trough checkout as anonymous user and login as existing user
    Given I have a new registered B2C user
    And I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And I tap the checkout button
    Then the accountLogin view is displayed
    And I tap the login button
    And I set the property username on the emailAddress field
    And I set the property password on the password field
    And I tap the login button
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    And I tap the payAtPickUp button
    And I dismiss the thank you page

