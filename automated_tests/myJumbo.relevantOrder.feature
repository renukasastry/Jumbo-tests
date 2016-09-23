Feture: Relavant Order Cell
	As a I have a new user
	I want to be able to see the first order cell when I login
	So I can be guided to place my first order

	@smode_test
	Scenario: A new user should see the first order cell
		Given I have a new user email address
		And I am at the loginScreen 
		Then the firstOrderCell view is displayed 
	
	@smode_test 	
	Scenario: A user with completed orders should not see the first order cell
	    Given I have an old email account 
	    And I am I am at the loginScreen
	    Then the firstOrderCell view is not displayed
	    
