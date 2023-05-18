*** Settings ***
Library  Selenium2Library

*** Test Cases ***
Escenario: Dado que ingreso informacion requerida puedo adquirir membresia
   GIVEN que estoy en la pagina de Netflix 
   WHEN ingreso la informacion requerida
   THEN puedo crear una membresia 

*** Keywords ***
Ingreso la informacion requerida
  Dado que ingreso cuenta de correo para adquirir membresia
  Dado que estoy en el paso uno
  Dado que selecciono el plan de membresia

Puedo crear una membresia
  Dado que finaliza el registro de membresia
