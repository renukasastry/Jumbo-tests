## FEATURE
Empty state of the search feature 

***
## Test Basis
[JUMBOAPP-4433](https://icemobile.atlassian.net/browse/JUMBOAPP-4433) - Use space on search search detail view for quick access (logged in state)
[JUMBOAPP-4474](https://icemobile.atlassian.net/browse/JUMBOAPP-4474) - Use space on search search detail view for quick access (logged out state)
[JUMBOAPP-4487](https://icemobile.atlassian.net/browse/JUMBOAPP-4474) - Display favourites in search detail view

***
All entry points are always displayed, regardless of whether or not the configuration call says it should be on myJumbo

## Test Ideas

* Check if the following entry points are displayed for logged in users: <br>
*- An entry point to the favourite list* <br>
*- An entry point to the list of products from my previous order* <br>
*- An entry point to the list of collections called 'handige productlijstjes'* <br>
 
* Check if the following entry points are displayed for logged out users: <br>
*- An entry point to the list of products from the 'eerste bestelling' collection* <br>
*- An entry point to the list of collections called 'handige productlijstjes'* <br>

* Check if the entry points are hidden as soon as the user starts typing
* Check if all the entry points are working

* Check all empty/errorstates for each entry point
