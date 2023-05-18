*** Settings ***
Library  Selenium2Library

Resource   ../../Netflix/pagesobjects/registration-page.robot
Resource   ../../NetFlix/facades/Netflix-facades.robot

***Test Cases***
Scenario:Select user of Netflix
    Given I am in User profile page
    When I do click on the correct user profile icon
    Then Netflix redirects to series and movies content

*** Keywords ***
I do click on the correct user profile icon
    Given I am in the users page
    And Show the user profiles
    Then clicks on the correct user profile
    And I can see the user section selected

Netflix redirects to series and movies content
    When the data selected correnctly