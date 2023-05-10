***Settings***
Library  Selenium2Library

Resource   ../../Netflix/pagesobjects/registration-page.robot
Resource   ../../NetFlix/facades/Netflix-facades.robot

***Test Cases***
Scenario:Select User Netflix
   Given I am in the Netflix page
     When clicking on Login button
     Then Netflix redirects to Register page       

*** Keywords ***
I am in Netflix page
   I open the url
   verify I am in the page
   I click on Login button

I open the url
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window