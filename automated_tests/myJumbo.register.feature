Feature: User registration
  As a user
  I want to be able to go through the register and onboarding flow
  so I can use the Jumbo app

  @smoke_test @nuri
  Scenario: I want to register a new B2C user
    Given I have a new user email address
    When I tap the registerb2c button
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
  	And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view
    And I tap the next button
    Then the shoppingListTooltip is displayed
    And I tap the tooltip view
    Then the menuTooltip is displayed
    And I tap the tooltip view
    Then the productsTooltip is displayed
    And I tap the tooltip view
    Then loggedIn button is displayed

  @smoke_test
  Scenario: I want to register a new B2B user
    Given I have a new user email address
    When I tap the registerb2b button
    And I tap the ok button
    And I set the property newUsername on the emailAddress field
    And I set the value qwerty on the password field
    And I tap the register button
    And I set the value 34359257 on the kvk field
    And I tap the registerKvkLookUp button
    And I tap the registerKvk button
    And I set the value Cube on the name field
    And I set the value the on the insertion field
    And I set the value Cubie on the surname field
    And I set the value 6123456789 on the phoneNumber field
    And I tap the registerName button
    And I tap the next button
    And I tap the termsAndConditions checkbox
    And I tap the next button
    And I tap the paymentInfo button
    And I tap the decline button
  	And I the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view
    And I tap the next button
    Then the shoppingListTooltip is displayed
    And I tap the tooltip view
    Then the menuTooltip is displayed
    And I tap the tooltip view
    Then the productsTooltip is displayed
    And I tap the tooltip view
    Then loggedIn button is displayed
