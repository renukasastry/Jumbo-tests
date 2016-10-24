Feature: New onboarding screen
	As a new user of the app
	I want to see the redesign of the onboarding flow
	So I'm better instructed about the features of the app

	@smoke_test
	Scenario: Elements on the onboarding screen should be displayed during the navigation between the new screens
		Given I am on the onboardingWelcome view
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipe left
		Then the onboardingOnlineShopping view is displayed
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipe left
		Then the onboardingRecipes view is displayed
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipe left
		Then the onboardingStoreFinder view is displayed
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipe left
		Then the onboardingBarcodeScanner view is displayed
		And the registerOrLogin button is displayed
		And the skip button is displayed
		When I swipe left
		Then the onboardingBarcodeScanner view is displayed
		When I swipe right
		Then the onboardingStoreFinder view is displayed
		When I swipe right
		Then the onboardingRecipes view is displayed
		When I swipe right
		Then the onboardingOnlineShopping view is displayed
		When I swipe right
		Then the onboardingWelcome view is displayed
		When I swipe right
		Then the onboardingWelcome view is displayed

	Scenario: Buttons on the onboarding screen should trigger the expected actions
		Given I am on the onboardingWelcome view
		And the registerOrLogin button is displayed
		When I tap the registerOrLogin button
		And the actionSheet view is displayed
		And I tap the actionsheetLogin button
		Then the emailAddress field is displayed
    	And the password field is displayed
		And I tap the close button
		Then the onboardingWelcome view is displayed 
		And I tap the registerOrLogin button
		And I tap the actionsheetRegisterB2C button
		And I tap the ok button
		Then the emailAddress field is displayed
    	And the password field is displayed
    	And I tap the close button
    	And I tap the yes button #button to confirm closing the registration view
    	Then the onboardingWelcome view is displayed  
    	And I tap the registerOrLogin button
		And I tap the actionsheetRegisterB2B button
		And I tap the ok button
		Then the emailAddress field is displayed
    	And the password field is displayed
    	And I tap the close button
    	And I tap the yes button #button to confirm 
    	Then the onboardingWelcome view is displayed  








