*** Settings ***
Resource      ../../Netflix/pagesobjects/help-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot

*** Keywords ***
I am in Netflix Login page2
 I am in Netflix Login page
#I press help link
#I am Login Help page

I am in Netflix Login page
  Wait Until Element is Visible  ${titleLogin}  30

I press help link
  click element  ${hekpLink}

I am Login Help page
  Wait Until Element is Visible  ${forgotPasswordInput}  30
  Input text   ${forgotPasswordInput}    ${EMAIL_ADMIN}
