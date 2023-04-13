***Settings***
Library  Selenium2Library

Resource        ../../Netflix/stepdefinitions/loggin-sd.robot         
Resource       ../../Netflix/facades/Netflix-facade.robot         

***Test Cases***
Escenario iniciar sesion 
 Given  I am in Netflix page
 When I start session
 Then the user logs in

*** Keywords ***

I am in Netflix page
 Given que yo abro la url
 Then verifico que estoy en la pagina

I start session
 Given que estoy en la pagina de inicio de sesion 
 When I fill in the required information
 Then yo puedo iniciar sesion 

the user logs in
 Then estoy en la pagina de seleccionar perfil