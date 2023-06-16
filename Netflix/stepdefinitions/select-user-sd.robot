*** Settings ***
Library  Selenium2Library

Resource       ../../Netflix/pagesobjects/select-user-page.robot
Resource       ../../Netflix/pagesobjects/registration-page.robot
Resource       ../../Netflix/configuration/configuration-dev.robot
Resource       ../../Netflix/facades/Netflix-facade

Library  Operatingsystem

***Test Cases***
Scenario:Select user of Netflix
    Given I am in Netflix page 
    when I click on the signin button
    And I enter the username and password  
    Then I click on Signin button
    When I do click on the correct user profile icon
    Then Netflix redirects to series and movies content

*** Keywords ***
The data filled correnctly
  I click on Signin label
  I fill username
  I fill Password
  I click on Signin button
  I click on profileIcon button

I click on Signin label
  #Click on the sign in button label to go in
  click element  ${SignInlabel}
  Sleep   2s

I fill username
  #Enter username
  Wait Until Element is Visible   ${userLoginInput}  30  
  Input text   ${userLoginInput}    ${EMAIL_ADMIN} 

I fill Password
  #Enter password
  Wait Until Element is Visible   ${userPasswordInput}  30 
  Input text   ${userPasswordInput}    ${PASSWORD}

I click on Signin button
  #Click on Sign in button
  click element  ${SignInbutton}
  Sleep   3s  

I click on profileIcon button
  #Access to profile user
  Wait Until Element is Visible   ${profileIcon}  30
  Input text   ${profileIcon}    ${UserSelected}