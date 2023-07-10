***Settings***
Library  Selenium2Library

Resource       ../../Netflix/pagesobjects/registration-page.robot
Resource       ../../Netflix/facades/Netflix-facade

*** Keywords ***
I open the url
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window

verify I am in the Sign In page
    ${title}=  Get Title
    Log To Console  ${title}

#I click on Login button
 #   click element  ${signInButton}

enter a valid email account 
    Wait Until Element Is Visible    ${userLoginInput}  30

enter a correct password
    Wait Until Element Is Visible    ${userPasswordInput}  30

the data filled correnctly
    Input Text    ${userLoginInput}    ${EMAIL_ADMIN}

the data filled
    Input Text    ${userPasswordInput}    ${PASSWORD}

Click on Sign In button
    click element  ${signInButton}