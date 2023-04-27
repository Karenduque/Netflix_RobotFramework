*** Settings ***
Resource      ../../Netflix/pagesobjects/home-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot

*** Keywords ***
I am in Netflix page
 que yo abro la url
 verifico que estoy en la pagina
 le doy clic al boton de iniciar sesion

que yo abro la url
 Open Browser   ${URL_Netflix}  chrome
 Maximize Browser Window

verifico que estoy en la pagina
  ${title}=  Get Title
  Log To Console  ${title}

le doy clic al boton de iniciar sesion
   click element  ${iniciarSesionBoton}






   




