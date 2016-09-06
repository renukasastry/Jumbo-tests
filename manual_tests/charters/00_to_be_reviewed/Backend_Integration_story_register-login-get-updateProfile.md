I# Integration Story (Register-login-get-update Profile) 


## Test Basis

<br>

[JUMBOAPP-3591](https://icemobile.atlassian.net/browse/JUMBOAPP-3591)


## Test Ideas

***

Register and Get B2C Profile

***

Register and Get B2B Regular Profile

* Direct Debit - should have property Excess
* Invoice - should have property Excess
* PIN

***

Login as B2C User

***

Login as B2B Regular and get profile

* Direct Debit - should have property Excess
* Invoice - should have property Excess
* PIN
	
***

- Login as B2B Sub and get profile

* Direct Debit - should have property Excess
* Invoice - should have property Excess
* PIN

***

Login as B2B Master (shows error)

***

Update and Get B2C User


Update and Get B2B Regular

* Direct Debit - should have property Excess
* Invoice - should have property Excess
* PIN

***

Update and get B2B Sub

* Direct Debit - should have property Excess
* Invoice - should have property Excess
* PIN

***		

## Notes
<br>

Execution notes:

- Ioana checks this in integration testing
- Frontend devs will chenck if the integration breaks anything.


How UX-API reads

- UX19: Edit profile (APP sends profile to UX API)
	- WS08 Read profile  ( UXAPI gets the profile form CDM)
	- Merge APP details with the retrieved profile from (1)
	- Call to WS03 update profile with results from (2)  -> CDM responds ok/error
	- Call WS08 to get updated profile 
	- Send updated profile to APP


## Bugs