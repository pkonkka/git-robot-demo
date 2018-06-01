*** Settings ***
Library  ../Libraries/MyCustomLibrary.py
# Resource  PO/LandingPage.robot
# Resource  PO/TopNav.robot
# Resource  PO/SearchResults.robot
# Resource  PO/Product.robot
# Resource  PO/Cart.robot
Resource  PO/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LangingPage.Verify Page Loaded
    TopNav.Search for Products
    ${ReturnedInfo} =  SearchResults.Verify Search Completed
    Log  ${ReturnedInfo}

Select Product from Search Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

Do Some Custom Thing
    Do Something Special


