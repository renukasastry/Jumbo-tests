Feature: Product Detail Screen 
	As a user I want to be able to see all the details of a product
	So I can make an informed decision on what to order

    @smoke_test
    Scenario: I want to see the details of a regular product in the PDP screen from my jumbo floater
        Given I am a logged in B2C user
        When I tap the myJumboFloater button
        And I set the value 125705STK on the search field 
        And I tap the enter button 
        And I tap the firstValue view 
        Then the value Productomschrijving is displayed on the productDetails view  
        And the value Voedingswaarde is displayed on the productDetails view  
        And the value Ingrediënten is displayed on the productDetails view  
        And the value Allergiewaarschuwingen is displayed on the productDetails view  
        And the value Veiligheid & gebruik is displayed on the productDetails view  
        And the value Over de fabrikant is displayed on the productDetails view  
        And the value Méér producten is displayed on the productDetails view  
        And I tap the moreProducts tab 
        Then the value Anderen kochten ook is displayed on the moreProducts view
        And the value Lees meer is displayed on the moreProducts view


    @smoke_test
    Scenario: I want to see the details of a multipack product in the PDP screen from my jumbo floater
        Given I am a logged in B2C user
        When I tap the myJumboFloater button
        And I set the value 125703STK on the search field 
        And I tap the enter button 
        And I tap the firstValue view 
        Then the value Productomschrijving is displayed on the productDetails view  
        And the value Voedingswaarde is displayed on the productDetails view  
        And the value Ingrediënten is displayed on the productDetails view  
        And the value Over de fabrikant is displayed on the productDetails view  
        And the inspirationalBanner image is displayed on the productDetails view  
        And the value Méér producten is displayed on the productDetails view  
        And I tap the inspirationalBanner image
        Then the value Andere keuze is displayed on the moreProducts view
        And the value Lees meer is displayed on the moreProducts view

    @smoke_test
    Scenario: I want to see the details of a product in the PDP screen from categories search floater 
        Given I am a logged in B2C user
        And I tap the products tab
        And I tap the productFloater button 
        And I set the value 82086NET on the search field 
        And I tap the enter button 
        And I tap the firstValue view 
        Then the value Productomschrijving is displayed on the productDetails view  
        And the value Herkomst is displayed on the productDetails view   
        And the value Ingrediënten is displayed on the productDetails view  
        And the value Veiligheid & gebruik is displayed  on the productDetails view  
        And the value Over de fabrikant is displayed  on the productDetails view  
        And the favorite button is displayed
        And the value Méér producten is displayed  on the productDetails view  
        And I tap the moreProducts tab 
        Then the value Andere keuze is displayed on the moreProducts view
        Then the value Anderen kochten ook is displayed on the moreProducts view
        And the value Inspiratielijstjes met dit product is displayed

    @smoke_test
    Scenario: I want to see the details of a product in the PDP screen from shopping list search floater 
        Given I am a logged in B2C user
        When I tap the shoppingList button
        And I tap the shoppingFloater button 
        And I set the value 82086NET on the search field 
        And I tap the enter button 
        And I tap the firstValue view 
        Then the value Productomschrijving is displayed on the productDetails view  
        And the value Herkomst is displayed on the productDetails view   
        And the value Ingrediënten is displayed on the productDetails view  
        And the value Veiligheid & gebruik is displayed on the productDetails view  
        And the value Over de fabrikant is displayed on the productDetails view  
        And the favorite button is displayed 
        And the value Méér producten is displayed on the productDetails view  
        And I tap the moreProducts tab 
        Then the value Andere keuze is displayed on the moreProducts view
        And the value Inspiratielijstjes met dit product is displayed

    @smoke_test
    Scenario: I want to see the details of a product in the PDP screen from convert to SKU screen
        Given I am a logged in B2C user
        When I tap the recipes tab
        And I tap the firstImage view 
        And I tap the addToShoppingList button
        And the ingredients view is displayed
        And I tap the magnifyingGlass button 
        Then the value Productomschrijving is displayed on the productDetails view  
        And the favorite button is displayed        
        And the value Herkomst is displayed on the productDetails view   
        And the value Ingrediënten is displayed on the productDetails view  
        And the value Veiligheid & gebruik is displayed  on the productDetails view  
        And the value Over de fabrikant is displayed
                
    @smoke_test
    Scenario: I want to see the details of a product in the PDP screen from update open order screen
        Given I am a logged in B2C user
        And I have placed a beer order
        And I tap the orderHistory button
        And I tap the editOrder button
        And I tap the changeOrderFloater button
        And I set the value 82086NET on the search field 
        And I tap the enter button 
        And I tap the firstValue view 
        Then the value Productomschrijving is displayed on the productDetails view  
        And the value Herkomst is displayed on the productDetails view   
        And the value Ingrediënten is displayed on the productDetails view  
        And the value Veiligheid & gebruik is displayed  on the productDetails view  
        And the value Over de fabrikant is displayed on the productDetails view  
        And the favorite button is displayed
        And the value Méér producten is displayed on the productDetails view  
        And I tap the moreProducts tab
        Then the value Andere keuze is displayed on the moreProducts view
        And the value Inspiratielijstjes met dit product is displayed

    @smoke_test
    Scenario: I want to see the details of a product in the PDP screen from reoder screen 
        Given I am a logged in B2C user
        And I have placed a beer order
        And I tap the orderHistory button
        And I tap the orderDetail button
        And I tap the cancellOrder button
        And I tap the Ok button 
        And I tap the orderDetail button
        And I tap the reorderProducts button 
        And I tap the firstValue view 
        Then the value Productomschrijving is displayed on the productDetails view  
        And the value Alcoholpercentage is displayed on the productDetails view  
        And the value Ingrediënten is displayed on the productDetails view  
        And the value Veiligheid & gebruik is displayed  on the productDetails view  
        And the value Over de fabrikant is displayed on the productDetails view  
        And the favorite button is displayed 
        And the value Méér producten is displayed on the productDetails view  
        And I tap the moreProducts tab
        Then the value Andere keuze is displayed on the moreProducts view
        And the value Anderen kochten ook is displayed on the moreProducts view

    @smoke_test
    Scenario: I want to see the details of a product in the PDP screen from list of favorite products
        Given I am a logged in B2C user
        When I tap the myJumboFloater button
        And I set the value 125705STK on the search field 
        And I tap the enter button 
        And I tap the firstValue view 
        And I tap the favorite button 
        And I tap the close button 
        And I tap the favoriteProducts button 
        And I tap the firstValue view 
        Then the value Productomschrijving is displayed on the productDetails view  
        And the value Voedingswaarde is displayed on the productDetails view  
        And the value Ingrediënten is displayed on the productDetails view  
        And the value Veiligheid & gebruik is displayed  on the productDetails view  
        And the value Over de fabrikant is displayed on the productDetails view   
        And the value Méér producten is displayed on the productDetails view  
        And I tap the moreProducts tab
        Then the value Anderen kochten ook is displayed on the moreProducts view
        And the value Lees meer is displayed on the moreProducts view
