*** Settings ***
Library  Selenium2Library

Resource   ../../Netflix/pagesobjects/select-user-page.robot

***Test Cases***
Scenario:Select user of Netflix
    Given I am in User profile page
    When I do click on the correct user profile icon
    Then Netflix redirects to series and movies content

*** Keywords ***
I am in User profile page
    the data filled correnctly

I do click on the correct user profile icon
    I am in the profile page
    Show the user profiles
    clicks on the correct user profile
    I can see the user section selected

Netflix redirects to series and movies content
    the data selected correnctly