*** Settings ***
Resource       ../../Netflix/configuration/configuration-dev.robot

Library    Selenium2Library

*** Variables ***
${button-Registration}  css=*[href="/user/registration"]
${location} 
${login_title}    


*** Keywords ***
I am in Netflix page
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window

Print title of Netflix home
  ${title}=  Get Title
  Log To Console  ${title}

The user can see "Iniciar Sesion" button
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/div/div/div/div/div/header/div/span[3]/a
    ${location}=  Get location
    Log To Console    ${location} 

User clicks on "Iniciar Sesion" button
    Click element    xpath://*[@id="appMountPoint"]/div/div/div/div/div/div/header/div/span[3]/a
    ## xpath://*[@id="appMountPoint"]/div/div/div/div/div/div/header/div/span[3]/a
    Sleep    2s
    
User can see the login form
    ${login_title}    Get Title
    Log To Console    ${login_title}
    Sleep    1s

#Pasos pendientes utilizar
The registration option was selected
    click element  ${button-Registration}    

I fill the email as Admin
    Wait Until Element is Visible   ${email}  30
    Input text   ${email}    ${EMAIL_ADMIN}
  
I fill the password
    Wait Until Element is Visible   ${password}  30
    Input text   ${password}    ${PASS_ADMIN}