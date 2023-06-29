***Settings***
Library  Selenium2Library

Resource    ../../Netflix/facades/Netflix-facade.robot
Resource    ../../Netflix/stepdefinitions/home-sd.robot
Resource    ../../Netflix/configuration/configuration-dev.robot
Resource    ../../Netflix/pagesobjects/home-page.robot

***Test Cases***
Scenario: Correct redirect to restart membership 
    Given I am on the Netflix page
    When I enter the email
    Then Netflix redirects me to the restart membership page

*** Keywords ***
