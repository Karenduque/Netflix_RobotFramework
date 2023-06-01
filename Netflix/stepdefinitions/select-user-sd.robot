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
  I click on Profile-icon button

I click on Signin label
  #Click on the sign in button label to go in
  click element  ${SignIn-label}
  Sleep   2s

I fill username
  #Enter username
  click element  ${id-userLoginId}
  Wait Until Element is Visible   ${id-userLoginId}  
  Input text   ${id-userLoginId}    jquinterocortes@gmail.com

I fill Password
  #Enter password
  click element  ${id-userPassword}
  Wait Until Element is Visible   ${id-userPassword} 
  Input text   ${id-userPassword}    jq+14476253

I click on Signin button
  #Click on Sign in button
  click element  ${SignIn-button}
  Sleep   3s  

I click on Profile-icon button
  #Access to profile user
  Wait Until Element is Visible   ${profile-Icon}
  Input text   ${profile-Icon}    CNENCONDBFAN5KFQ4PVAG447JA