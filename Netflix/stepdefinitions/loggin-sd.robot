*** Settings ***
Resource      ../../Netflix/pagesobjects/loggin-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot


*** Keywords ***
I fill in the required information
 fill in the required information 
 place mail
 set password

click on “sign in” button
the user logs in successfully


   




