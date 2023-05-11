*** Settings ***
Resource      ../../Netflix/pagesobjects/registration-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot
Resource      ../../Netflix/facades/netflix-facade.robot

Library    OperatingSystem

***Test Cases***
User acces to home_page
  Given I am in Netflix page
  When The user can see "Iniciar Sesion" button
  And I logged in Netflix
  Then I can see the home page


*** Keywords ***
I am in Netflix page
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window

The user can see "Iniciar Sesion" button
    I see the login fields  #este debe estar en page

I logged in Netflix
    I fill the email and password
    

I can see the home page
    I see the Netflix Home page  # debe estar en page


The data filled correctly
  I fill the login
  I accept Terms & Conditions
  I fill Password
  I fill Repeat password
  I fill Enter code
  I click on Registration button

#sin Enter code
The data filled incorrectly
  I fill the login
  I accept Terms & Conditions
  I fill Password
  I fill Repeat password
  I click on Registration button







