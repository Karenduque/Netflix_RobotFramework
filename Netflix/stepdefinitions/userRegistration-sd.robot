*** Settings ***
Resource      ../../Netflix/pagesobjects/registration-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot

*** Test Cases ***
Escenario: Redireccion correcta para crear membresia
   GIVEN que estamos en la pgina web de Netflix 
   WHEN ingreso el correo electronico
   THEN nos redirecciona a la pagina de crear membresia 

*** Keywords ***
