*** Settings ***
Library  Selenium2Library

Resource   ../../Netflix/pagesobjects/registration-page.robot
Resource   ../../NetFlix/facades/Netflix-facades.robot

***Test Cases***
Scenario:Select user of Netflix
    Given I am in the users page 
    And Show the user name
    When I do click on the correct user
    Then Netflix redirects to series and movies page

*** Keywords ***

I do click on the correct user
  Given I am in the users page
  And Show the user selected

I am selecting the user
    Given I can see the user name
    Then clicks on the correct user
    And I can see the user section selected

Netflix redirects to series and movies page
  When the data selected correnctly