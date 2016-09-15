#Tooltips
Tooltips in My Jumbo on product search and SL button (for now) and Visual Shopping list button tooltip

***

## Test Basis
[JUMBOAPP-4294](https://icemobile.atlassian.net/browse/JUMBOAPP-4294) - Add tooltips to 'Mijn Jumbo'<br>
[JUMBOAPP-4176](https://icemobile.atlassian.net/browse/JUMBOAPP-4176) - Entry point for manlist on SL


	* Tooltips are displayed to all types of users in any scenario displaying MyJumbo and the SL for the first time after the implementation of the tooltips.
	* Tooltips are only shown once
  
***

## Test Ideas
###My Jumbo
* Check if the tooltip for the SL button is displayed (is displayed first)
* Check if the tooltip for the products module is displayed (is displayed second)
* Check if the tooltips are dismissable
* Check if the tooltip is displayed after login (All user types)
* Check if the tooltip is displayed after registration (All user types)
* Check if the tooltip is displayed after skipping the registration and login
* Check if the tooltip is displayed after update (All usertypes)
* Check if the tooltip is only displayed once for all the previous cases
* Check if the tooltips arn't displayed after login when they're already dismissed by anonymous user
* Put the app on the background when each tooltip is displayed and then come back to the app (should display the last displayed tooltip again)
* Kill the app when each tooltip is displayed and then come back to the app (should show all tooltips again)
* Kill the app after last tooltip is dismissed and then come back (tooltips are not shown again)
* Check if the tooltip is dismissed when you tap the screen
* Android only: Tap the back button when each tooltip is displayed (should close the app)
 

###Shopping List

* Check if the tooltip is displayed on clean install (All usertypes)
* Check if the tooltip is displayed after update (All usertypes)
* Check if the tooltip is dismissed when you tap the screen
* Put the app on the background when tooltip is displayed and then come back to the app (the tooltip should not be displayed)
* Kill the app when tooltip is displayed and then come back to the app (the tooltip should not be displayed)
* Check if the tooltip isn't displayed after login when it's already dismissed by anonymous user
* * Android only: Tap the back button when tooltip is displayed (should dismiss the tooltip)



###Other Test Ideas
* Check the tooltip on different resolution and screen size devices, the overlay behind the tooltip should cover all the app area
* Install a version of the app that only has the 'visual shopping list button tooltip'. View and dismiss this tooltip and update to a version that has also the 'My Jumbo' tooltips. Check if the 'My Jumbo' tooltips are displayed but the SL tooltip is not displayed again


***

## Bugs


***

## Observations


***
