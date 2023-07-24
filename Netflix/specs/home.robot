***Settings***
Library  Selenium2Library
Library  ExtendedSelenium2Library

#Library  ../../Netflix/resources/testing.py


Resource    ../../Netflix/stepdefinitions/home-sd.robot  
Resource    ../../Netflix/configuration/configuration-dev.robot
Resource    ../../Netflix/pagesobjects/home-page.robot
Resource    ../../Netflix/pagesobjects/login-page.robot

*** Test Cases ***
Scenario:Home page Netflix
   Given I am in the Netflix page
    When I am filling the Sign data
    Then clicking on Sign in button      

*** Keywords ***
I am in the Netflix page
    #I open the url
    open Netflix
    Verify I am in the home page
    I click on Login button

I am filling the Sign data
    User can see the login fields

clicking on Sign in button
    the data filled correnctly in the page