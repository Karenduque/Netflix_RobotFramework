***Settings***
Library  Selenium2Library
Resource       ../../Netflix/facades/Netflix-facade.robot

***Test Cases***
Scenario: Correct redirect to restart membership 
   Given I am on the Netflix page
   When I enter the email
   Then Netflix redirects me to the restart membership page

*** Keywords ***
