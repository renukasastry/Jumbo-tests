Feature: New onboarding screen
	As a new user of the app
	I want to see the redesign of the onboarding flow
	So I'm better instructed about the features of the app

	@smoke_test
	Scenario: Elements on the onboarding screen should be displayed during the navigation between the new screens
		Given I am on the onboarding1 screen
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipeLeft
		Then the onboarding2 screen screen is displayed
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipeLeft
		Then the onboarding3 screen screen is displayed
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipeLeft
		Then the onboarding4 screen screen is displayed
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipeLeft
		Then the onboarding5 screen screen is displayed
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipeLeft
		Then the onboarding5 screen is displayed
		When I swipe right
		Then the onboarding4 screen screen is displayed
		When I swipe right
		Then the onboarding3 screen screen is displayed
		When I swipe right
		Then the onboarding2 screen screen is displayed
		When I swipe right
		Then the onboarding1 screen is displayed
		When I swipe right
		Then the onboarding1 screen is displayed

	Scenario: Buttons on the onboarding screen should trigger the expected actions
		Given I am on the onboarding1 screen
		And the registerOrLogin button is displayed
		When I tap the registerOrLogin button
		And the actionSheet view is displayed
		And I tap the login button
		Then the emailAddress field is displayed
    	And the password field is displayed
		And I tap the close button
		Then the onboarding1 screen is displayed 
		And I tap the registerOrLogin button
		And I tap the registerb2c button
		And I tap the ok button
		Then the emailAddress field is displayed
    	And the password field is displayed
    	And I tap the close button
    	And I tap the yes button #button to confirm closing the registration view
    	Then the onboarding1 screen is displayed  