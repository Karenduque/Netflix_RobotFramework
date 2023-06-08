***Settings***
Library  Selenium2Library
Resource      ../../Netflix/configuration/configuration-dev.robot
Resource      ../../Netflix/pagesobjects/home-page.robot

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
    Given User can see the login fields
    Wait Until Element Is Visible    ${id-userLoginId}
    Wait Until Element Is Visible    ${id-userPassword}

When the data filled correnctly in the page
    click element    ${id-userLoginId}
    click element    ${id-userPassword}
    Input Text    ${id_userLoginId}    ${EMAIL_ADMIN}
    Input Text    ${id-userPassword}    ${PASS_ADMIN}