*** Settings ***
Library  Selenium2Library

Resource       ../../Netflix/pagesobjects/registration-page.robot
Resource       ../../Netflix/configuration/configuration-dev.robot
Resource       ../../Netflix/facades/Netflix-facade

Library  Operatingsystem

***Test Cases***

*** Keywords ***
Scenario:Select user of Netflix
    Given I am in the users page 
    And show the user name
    When I do click on the correct user
    Then Netflix redirects to series and movies page