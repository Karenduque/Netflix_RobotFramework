***Settings***
Library  Selenium2Library

Resource       ../../Netflix/facades/login-facade.robot
Resource       ../../Netflix/pagesobjects/help-page.robot
Resource       ../../Netflix/stepdefinitions/loginHelp-sd.robot

***Test Cases***

Correct user login
   Given I am in Netflix page
    When Print title of Netflix home
    and The login option was selected
    and I fill the email as Admin
    and I fill the password
    Then the user is loging

ask for help
   Given the Netflix login page is open
    When press help link
    Then I am in Netflix Login Help page

*** Keywords ***
the Netflix login page is open
    Given I am in Netflix Login page
    
press help link
    When I press help link

I am in Netflix Login Help page
    Then I am Login Help page