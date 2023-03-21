***Settings***
Library  Selenium2Library

Resource       ../../Netflix/facades/login-facade.robot
Resource       ../../Netflix/pagesobjects/help-page.robot

***Test Cases***
ask for help
   Given the Netflix login page is open
    When press help link
    Then I am in Netflix Login page

*** Keywords ***
the Netflix login page is open
    Given I am in Netflix Login page
    
press help link
    When I press help link

I am in Netflix Login Help page
    Then I am Login Help page