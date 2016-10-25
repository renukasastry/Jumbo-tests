Feature: New onboarding screen
	As a new user of the app
	I want to see the redesign of the onboarding flow
	So I'm better instructed about the features of the app

	@smoke_test
	Scenario: Elements on the onboarding screen should be displayed during the navigation between the new screens
		Given I am on the onboardingWelcome view
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left the onBoarding view
		Then the value Online bestellen is displayed on the onboardingTitle view
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left the onBoarding view
		Then the value Heerlijke recepten is displayed on the onboardingTitle view
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left the onBoarding view
		Then the value Winkelvinder is displayed on the onboardingTitle view
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left the onBoarding view
		Then the value Streepjescode scanner is displayed on the onboardingTitle view
		And the registerOrLogin button is displayed
		And the next button is displayed
		When I swipe left the onBoarding view
		Then the value Streepjescode scanner is displayed on the onboardingTitle view
		When I swipe right the onBoarding view
		Then the value Winkelvinder is displayed on the onboardingTitle view
		When I swipe right the onBoarding view
		Then the value Heerlijke recepten is displayed on the onboardingTitle view
		When I swipe right the onBoarding view
		Then the value Online bestellen is displayed on the onboardingTitle view
		When I swipe right the onBoarding view
		Then the value Welkomn is displayed on the onboardingTitle view
		When I swipe right the onBoarding view
		Then the value Welkomn is displayed on the onboardingTitle view

	@maja
	Scenario: Buttons on the onboarding screen should trigger the expected actions
		Given I am on the onboardingWelcome view
		And the registerOrLogin button is displayed
		When I tap the registerOrLogin button
		And the actionSheet view is displayed
		And I tap the actionsheetLogin button
		Then the emailAddress field is displayed
    	And the password field is displayed
		And I tap the close button
		Then the value Online bestellen is displayed on the onboardingTitle view
		And I tap the registerOrLogin button
		And I tap the actionsheetRegisterB2C button
		And I tap the ok button
		Then the emailAddress field is displayed
    	And the password field is displayed
    	And I tap the close button
    	And I tap the yes button
		Then the value Online bestellen is displayed on the onboardingTitle view
    	And I tap the registerOrLogin button
		And I tap the actionsheetRegisterB2B button
		And I tap the ok button
		Then the emailAddress field is displayed
    	And the password field is displayed
    	And I tap the close button
    	And I tap the yes button
		Then the value Online bestellen is displayed on the onboardingTitle view








