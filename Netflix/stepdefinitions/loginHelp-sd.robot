*** Settings ***
Resource      ../../Netflix/pagesobjects/help-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot

*** Keywords ***
The data filled correnctly
 I press help link
 I am Login Help page

I press help link
  click element  ${hekpLink}

I am Login Help page
  Wait Until Element is Visible  ${forgotPasswordInput}  30
  Input text ${forgotPasswordInput}    ${EMAIL_ADMIN}
