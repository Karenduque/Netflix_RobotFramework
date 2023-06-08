***Settings***
Resource    ../../Netflix/stepdefinitions/home-sd.robot  
Resource    ../../Netflix/configuration/configuration-dev.robot
Resource    ../../Netflix/pagesobjects/home-page.robot
Resource      ../../Netflix/stepdefinitions/home-sd.robot

*** Test Cases ***
Scenario:Home page Netflix
    Given I am in the Netflix page
    When I am filling the Sign data
    Then clicking on Sign in button      

*** Keywords ***
Given I am in the Netflix page
    I open the url
    Verify I am in the home page
    I click on Login button

I am filling the Sign data
    User can see the login fields

When clicking on Sign in button
    When the data filled correnctly in the page