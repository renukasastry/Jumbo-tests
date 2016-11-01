Feature: New onboarding screen
	As a new user of the app
	I want to see the redesign of the onboarding flow
	So I'm better instructed about the features of the app

	@smoke_test
	Scenario: Elements on the onboarding screen should be displayed during the navigation between the new screens
		Given the onboardingTitle view is displayed
		And the onboardingText view is displayed
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Online bestellen is displayed on the onboardingTitle view
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Heerlijke recepten is displayed on the onboardingTitle view
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Winkelinformatie is displayed on the onboardingTitle view
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Zakelijke boodschappen is displayed on the onboardingTitle view
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left on the onBoarding view
		Then the value Zakelijke boodschappen is displayed on the onboardingTitle view
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








