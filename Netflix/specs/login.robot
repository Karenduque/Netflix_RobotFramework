***Settings***
Library  Selenium2Library

Resource       ../../Netflix/facades/login-facade.robot

***Test Cases***
Correct user login
   Given I am in Netflix page
    When Print title of Netflix home
    and The login option was selected
    and I fill the email as Admin
    and I fill the password
    Then the user is loging

*** Keywords ***
the Netflix page is open
    Given I am in Netflix page
    
print tittle page home
    When Print title of Netflix home

fill the email
    When I fill the email as Admin

fill the password
    When I fill the password

go to login
    When The login option was selected

the user is loging
    Then the user is loging