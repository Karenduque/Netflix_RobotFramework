*** Settings ***
Library  Selenium2Library

Resource        ../../Netflix/stepdefinitions/components-login-sd.robot         
         

***Test Cases***
Check elements on Login page
    Given that the Netflix login page is open
    Then the content load correctly 

*** Keywords ***
that the Netflix login page is open
    Given I am in login page
    
the content load correctly 
    Then the content load correctly in the page