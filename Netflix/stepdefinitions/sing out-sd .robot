*** Settings ***
Resource      ../../Netflix/pagesobjects/loggin-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot


*** Keywords ***
on netflix login page
 Given  that filler the formulary
 Then i click on the login button







click on “sign in” button
the user logs in successfully




   




