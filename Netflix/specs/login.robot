*** Settings ***
Library  Selenium2Library

Resource   ../../Netflix/pagesobjects/login-page.robot

***Test Cases***
Scenario:Enter to Login Page
        Given im in Sign In page
        When enter a valid email account 
        and enter a correct password
        and Click on Sign In button
        Then Netflix redirects to Users page      

*** Keywords ***
Given im in Sign In page
    Given I open the url
    Then verify I am in the page

When enter a valid email account 
    When the data filled correnctly

and enter a correct password
    When the data filled correnctly

and Click on Sign In button
    Cliking in the button
    
Then Netflix redirects to Users page
  When the data selected correnctly