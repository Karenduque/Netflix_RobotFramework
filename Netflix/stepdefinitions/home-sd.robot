***Settings***
Library  Selenium2Library
Resource      ../../Netflix/configuration/configuration-dev.robot

*** Keywords ***
##I am in Netflix page
##   I open the url
##   verify I am in the page
##   I click on Login button

I open the url
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window

Verify I am in the home page
    ${title}=  Get Title
    Log To Console  ${title}

I click on Login button
    click element  ${signInButton}