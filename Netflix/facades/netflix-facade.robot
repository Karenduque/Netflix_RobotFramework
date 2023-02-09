*** Settings ***
Resource       ../../casino/configuration/configuration-dev.robot


*** Variables ***
${button-Registration}  css=*[href="/user/registration"]


*** Keywords ***
I am in casino page
    Open Browser   ${URL_casino}  chrome

The registration option was selected
    click element  ${button-Registration}    

I fill the email as Admin
    Wait Until Element is Visible   ${email}  30
    Input text   ${email}    ${EMAIL_ADMIN}
  
I fill the password
    Wait Until Element is Visible   ${password}  30
    Input text   ${password}    ${PASS_ADMIN}