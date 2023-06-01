*** Settings ***
Library  Selenium2Library

Resource   ../../Netflix/pagesobjects/select-user-page.robot

***Test Cases***
Scenario:Select user of Netflix
    Given I am in User profile page
    When I do click on the correct user profile icon
    Then Netflix redirects to series and movies content

*** Keywords ***
Given I am in User profile page
    When the data filled correnctly

When I do click on the correct user profile icon
    Given I am in the profile page
    And Show the user profiles
    Then clicks on the correct user profile
    And I can see the user section selected

Then Netflix redirects to series and movies content
    When the data selected correnctly