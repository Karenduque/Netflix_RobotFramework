***Settings***
Library  Selenium2Library
Resource      ../../Netflix/configuration/configuration-dev.robot
Resource      ../../Netflix/pagesobjects/home-page.robot
Resource      ../../Netflix/pagesobjects/login-page.robot

*** Keywords ***
I open the url
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window

Verify I am in the home page
    ${title}=  Get Title
    Log To Console  ${title}

I click on Login button
    click element  ${signInButton}

User can see the login fields
    Wait Until Element Is Visible    ${userLoginInput}  30
    Wait Until Element Is Visible    ${userPasswordInput}  30

the data filled correnctly in the page
    Input Text    ${userLoginInput}    ${EMAIL_ADMIN}
    Input Text    ${userPasswordInput}    ${PASSWORD}