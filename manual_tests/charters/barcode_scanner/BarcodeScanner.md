#Barcode Scanner

##Test Basis
- [JUMBOAPP-4043](https://icemobile.atlassian.net/browse/JUMBOAPP-4043) - Access to PDP from the barcode scanner
- [JUMBOAPP-4288](https://icemobile.atlassian.net/browse/JUMBOAPP-4288) - Add new barcode scanner to edit order flow
- [JUMBOAPP-4280](https://icemobile.atlassian.net/browse/JUMBOAPP-4280) - Refactor: Barcodescanner background fixes.
- [JUMBOAPP-4246](https://icemobile.atlassian.net/browse/JUMBOAPP-4246) - Add new barcode scanner to 'Recepten' and 'Boodschappen' section
- [JUMBOAPP-4287](https://icemobile.atlassian.net/browse/JUMBOAPP-4287) - Make barcode scanner on SL suited for scanning recipes
- [JUMBOAPP-4182](https://icemobile.atlassian.net/browse/JUMBOAPP-4182) - Implement new scanner flow for Boodschappen sectio
- [JUMBOAPP-4183](https://icemobile.atlassian.net/browse/JUMBOAPP-4183) - Implement new scanner flow for shoppinglist
- [JUMBOAPP-4106](https://icemobile.atlassian.net/browse/JUMBOAPP-4106) - Add barcode icon to empty state of SL
- [JUMBOAPP-4145](https://icemobile.atlassian.net/browse/JUMBOAPP-4145) - Barcode scanner in Boodschappen

***

## Test setup

- [List of Barcodes](https://icemobile.atlassian.net/wiki/display/JUM/Barcodes+List) 

***

##Test Ideas

The following ideas are applicable to the barcode screen available in the Shopping List, Products section, Recipes section My Jumbo and Update order flow, when testing, keep in mind to check all these places:

- Click to open the Barcode scanner screen for the very first time and the permission to use the camera should be requested (android >= 6, iOS > 7)
- All barcodes scanner screens should have an empty state image
- Only products (barcodes EAN-8 or EAN-13) and recipes (QR Code 128) can be scanned
- Valid scanned products or recipes ingredients can be added to the shopping list
- Invalid codes can be scanned and an error feedback message should be displayed
- Unavailable products can be scanned and the unavailable badge should be displayed
- Out of Assortment products can be scanned and the Out of Assortment badge should be displayed
- Scanned items can be deleted
- Pointing to the same barcode for 5 seconds will rescan the code
- A product can also be rescanned after deleted
- A feedback message and checkmark are displayed after scanning a valid product
- In case there is no connection when scanning, a retry button is displayed
- For android, enable the feature Don't keep activities before start scanning, the scanning functionality should not be affected 
- Products that were added by scanning a barcode from a product are distinguished from products that are added by scanning a barcode from a recipe
- A scanned recipe has a header that displays the name of the recipe and the ingredients bellow it
- Delete all ingredients from a scanned recipe, the header should disappear
- Multiple recipes can be scanned and multiple recipes headers should be displayed
- Check the merge when you add a recipe that contains a ingredient that is already on your shopping list. Products from recipes merge to the products with same recipe id 
- Check the merge when you scan a product that is already on your shopping list. Products from single scanned products are merged into products with the same product id
- Scan a valid EAN, check if the image, name, additional info of the product and value are displayed  
- Scan an invalid EAN (product not available in Jumbo), check if an error feedback message is displayed 
- Scan barcodes that are not recognized by the app (e.g. barcode 39 or 138), check if error feedback message is displayed 
- Scan barcodes with device in landscape and portrait mode, check if the app recognizes the barcode, scanning in landscape mode is a plus
- Scan a valid product put the app in background, resume and keep scanning, it should work normally 
- Scan a valid product put the app in background, kill the activity(android only), reopen the app and keep scanning, it should scan normally 
- Add scanned products to an open order, they should be displayed in the new products list 
- Add a scanned recipe to the open order, they should be displayed in the new products list 


***
## Bugs 

N/A
***
## Observations
- The scanning feature should be tested on all available versions of Android, specially the ones bellow 4.4.

***

