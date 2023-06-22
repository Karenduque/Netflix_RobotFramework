*** Settings ***
Resource      ../../Netflix/pagesobjects/loggin-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot


*** Keywords ***

Given that I open the url
 verifico que es la url de netflix

Then verify that I am on the page
 verifico que estoy en la pagina de netflix
 
I start session
 doy click en el boton ir a iniciar sesion para que me lleve a la siguiente pantalla
 digito correo registrado
 digito contraseña
 doy click en el boton de iniciar sesion

Then  I can log in
 verifico que estoy en la pantalla para elegir perfiles

 










   
verifico que es la url de netflix
 

verifico que estoy en la pagina de netflix

doy click en el boton iniciar sesion para que me lleve a la siguiente pantalla
  click element  ${irainiciarsesion}    

digito correo registrado
  Wait Until Element is Visible   ${correoelectronico}   30
  Input text   ${correoelectronico}     ${EMAIL_ADMIN} 

digito contraseña
  Wait Until Element is Visible   ${contraseña}   30
  Input text   ${contraseña}    ${PASS_ADMIN}  

doy click en el boton de iniciar sesion
  click element  ${iniciarsesion}  





