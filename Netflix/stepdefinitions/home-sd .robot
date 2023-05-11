*** Settings ***
Resource      ../../Netflix/pagesobjects/home-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot

*** Keywords ***
I am in Netflix page
 Given that I open the url
 whent I verify that I am on the page
 then I click the login button sign in 

that I open the url
 Open Browser   ${URL_Netflix}  chrome
 Maximize Browser Window

I verify that I am on the page
  ${title}=  Get Title
  Log To Console  ${title}

I click the login button
   click element  ${iniciarSesionBoton}






   




