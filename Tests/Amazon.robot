*** Settings ***
Resource  ../Resources/AmazonApp.robot

# robot -d Results tests/amazon.robot

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke  Search
    AmazonApp.Search for Products
    AmazonApp.Do Some Custom Thing

Logged out user can view a products
    [Tags]  Smoke  View
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Search Results
    AmazonApp.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  Smoke Checkout
    
Feature 2 Test
    Log  doing feature 2




