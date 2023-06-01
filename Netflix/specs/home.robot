***Settings***
Resource    ../../Netflix/stepdefinitions/home-sd.robot  
Resource    ../../Netflix/configuration/configuration-dev.robot
Resource    ../../Netflix/pagesobjects/home-page.robot

*** Test Cases ***
Scenario:Home page Netflix
    Given I am in the Netflix page
    When clicking on Sign in button
    Then Netflix redirects to Sign in page       

*** Keywords ***
Given I am in the Netflix page
    I open the url
    Verify I am in the home page
    I click on Login button

When clicking on Sign in button
    When the data filled correnctly in the page

Then Netflix redirects to Sign in page
    When the data filled correnctly