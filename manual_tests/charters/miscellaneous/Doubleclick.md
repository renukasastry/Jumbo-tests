#DoubleClick Tracking in the app 
Sending information to Traffic4uz after opening the app by clicking a web banner
***

## Test Basis
[JUMBOAPP-4198](https://icemobile.atlassian.net/browse/JUMBOAPP-4198) <br>
[Confluence](https://icemobile.atlassian.net/wiki/display/JUM/JUMBOAPP-4178%3A+Implement+DoubleClick+Tracking+in+the+app) <br>
 
***

## Test Ideas

### GET 1
* Open the app using a regular deepling <br>
*- GET 1 is not fired* <br>
* Open the app normally (no deeplink) <br>
*- GET 1 is not fired* <br>
* Open the app using the "banner deeplink" <br>
*- GET 1 is fired including the right parameters listed in the story*
* Open the app using the "banner deeplink" but hold the configuration call <br>
*- GET 1 is not fired till configuration call is successful* 



***

### GET 2
* Place an order without having opend the app via "banner deeplink <br>
*- GET 2 is not fired* <br> 
* After opening the app using the "banner deeplink" place an order <br>
*- GET 2 is fired including the right parameters listed in the story* <br>
* After opening the app using the "banner deeplink" place an order and hold the place order response <br>
*- GET 2 is not fired untill the place order response is received* <br>
* After opening the app using the "banner deeplink" place an order and return an unsuccessful place order response <br>
*- GET 2 is not fired including the right parameters listed in the story* <br>
* After opening the app using the "banner deeplink" place an order then place another one<br>
*- GET 2 is fired both times including the right parameters listed in the story* <br>
* After opening the app using the "banner deeplink" place an order once "expires" is expired<br>
*- GET 2 is not fired* <br>
* After opening the app using the "banner deeplink" place an order once "enabled" is false<br>
*- GET 2 is not fired* <br>

### Other test ideas
* Check if configuration contains:  
"doubleClickCampaign" with both "expires" and "enabled"
* Check if the deeplink including the double-click parameters opens the app correctly
* Change the date/time on the device after opening the app via "banner deeplink" to before/after the click/expires moment and see if GET 2 is still being made after placing an order (should still be made)
* Open the app using a "banner deeplink" and check the parameters in the GET. Then open the app again with a new "banner deeplink" and see if the parameters in the new GET are updated.
* Click the banner with the app running in background and check if the 1st GET is fired 
* 


***

## Bugs


***

## Observations


***
