*** Settings ***
Resource       ../../Netflix/configuration/configuration-dev.robot


*** Variables ***
${button-go-login}  xpath=/html/body/div[1]/div/div/div/div/div/div/header/div/span[3]/a
${loginInput}  id:id_userLoginId
${passwordInput}  id:id_password
${button-login}  xpath=/html/body/div[1]/div/div[3]/div/div/div[1]/form/button

*** Keywords ***
I am in Netflix page
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window

Print title of Netflix home
  ${title}=  Get Title
  Log To Console  ${title}

The login option was selected
    click element  ${button-go-login}    

I fill the email as Admin
    Wait Until Element is Visible   ${loginInput}  30
    Input text   ${loginInput}    ${EMAIL_ADMIN}
  
I fill the password
    Wait Until Element is Visible   ${passwordInput}  30
    Input text   ${passwordInput}    ${PASS_ADMIN}

I click button login    
    click element  ${button-login}  
    Sleep  5s

the user is loging
    ${title}=  Get Title