*** Settings ***
Library  Selenium2Library

Resource   ../../Netflix/pagesobjects/login-page.robot

***Test Cases***
Scenario:Enter to Login Page
    Given I am in Sign In page
    When enter a valid email account 
    and enter a correct password
    and Click on Sign In button
    Then Netflix redirects to Users page      

*** Keywords ***
I am in Sign In page
    I open the url
    verify I am in the Sign In page

enter a valid email account 
    the data filled correnctly

enter a correct password
    the data filled correnctly

Click on Sign In button
    Cliking in the button
    
Netflix redirects to Users page
    the data selected correnctly