*** Settings ***
Library  Selenium2Library

Resource   ../../Netflix/pagesobjects/registration-page.robot
Resource   ../../NetFlix/facades/Netflix-facades.robot

***Test Cases***
Scenario:Enter to Login Page
        Given im in Sign In page
        When enter a valid email account 
        and enter a correct password
        and Click on Sign In button
        Then Netflix redirects to Users page      

*** Keywords ***
I am in Netflix page
  Given I open the url
  Then verify I am in the page