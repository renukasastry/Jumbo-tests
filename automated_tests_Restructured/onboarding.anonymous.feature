Feature: onboarding.anonymous.feature
As a user I want to be able to go through the onboarding
so I can enter the app informed and with the right home store



  @smoke_test
  Scenario: List of stores should be ordered by proximity to GPS location
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I tap the useLocation button
    And I tap the allow button
    Then the selectStoreCell view is displayed

  @smoke_test
  Scenario: List of stores should be ordered by proximity to the searched address
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    Then the selectStoreCell view is displayed

  @smoke_test
  Scenario: Empty state screen should be displayed when the searched address returns no matches
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I set the value gdyihjf on the homeStore field
    And I tap the enter button
    Then the emptyState view is displayed

  @smoke_test
  Scenario: Welcome screen should be displayed after selecting a home store
    Given the onboardingTitle view is displayed
    And the registerOrLogin button is displayed
    When I tap the next button
    And I set the value Amsterdam on the homeStore field
    And I tap the enter button
    And I tap the selectStoreCell view 
    Then the welcomeScreen view is displayed

   @smoke_test
   Scenario: I want to go through the onboarding as an anonymous user
     Given the onboardingTitle view is displayed
     And the registerOrLogin button is displayed
     When I tap the next button
     And I set the value Amsterdam on the homeStore field
     And I tap the enter button
     And I tap the selectStoreCell view
     Then the welcomeScreen view is displayed
     And I tap the next button
     And I tap the tooltip view
     And I tap the tooltip view
     And I tap the tooltip view
     Then the registerOrLogin button is displayed
 

	@smoke_test
	Scenario: Elements on the onboarding screen should be displayed during the navigation between the new screens
		Given the onboardingTitle view is displayed
		And the value Hallo is displayed on the onboardingTitle view
		And the onboardingText field is displayed
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Online bestellen is displayed on the onboardingTitle view
		And the onboardingText field is displayed
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Heerlijke recepten is displayed on the onboardingTitle view
		And the onboardingText field is displayed
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Winkelinformatie is displayed on the onboardingTitle view
		And the onboardingText field is displayed
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Zakelijke boodschappen is displayed on the onboardingTitle view
		And the onboardingText field is displayed
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Zakelijke boodschappen is displayed on the onboardingTitle view
		And the onboardingText field is displayed
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe right on the onBoarding view
		Then the value Winkelinformatie is displayed on the onboardingTitle view
		When I swipe right on the onBoarding view
		Then the value Heerlijke recepten is displayed on the onboardingTitle view
		When I swipe right on the onBoarding view
		Then the value Online bestellen is displayed on the onboardingTitle view
		When I swipe right on the onBoarding view
		Then the value Hallo is displayed on the onboardingTitle view

	@smoke_test
	Scenario: Buttons on the onboarding screen should trigger the expected actions
	 	Given the onboardingTitle view is displayed
		And the registerOrLogin button is displayed
		When I tap the registerOrLogin button
		Then the actionSheet view is displayed
		When I tap the actionsheetLogin button
		Then the emailAddress field is displayed
    	And the password field is displayed
		And I tap the close button
		Then the onboardingTitle view is displayed
		And I tap the registerOrLogin button
		And I tap the actionsheetRegisterB2C button
		And I tap the ok button
		Then the emailAddress field is displayed
    	And the password field is displayed
    	And I tap the close button
    	And I tap the yes button
		Then the onboardingTitle view is displayed
    	And I tap the registerOrLogin button
		And I tap the actionsheetRegisterB2B button
		And I tap the ok button
		Then the emailAddress field is displayed
    	And the password field is displayed
    	And I tap the close button
    	And I tap the yes button
		Then the onboardingTitle view is displayed




