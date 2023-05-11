*** Settings ***
Resource      ../../Netflix/pagesobjects/PO_user_login_dashboard.robot
Resource      ../../Netflix/configuration/configuration-dev.robot
Resource      ../../Netflix/specs/user_login_dashboard.robot

Library    OperatingSystem
Library    Selenium2Library


*** Keywords ***

user proceeds to log in
    Given I click in the login button
    when I set user and password
    and I click in the "Iniciar sesión" button
    Then I can acces the to profiles screen


user selects him profile
    Given I am in the profiles screen
    When I click on my profile
    Then I can access to the dashboard

the dashboard load correctly
    Given I am in the dashboard page
    and I can see the elements from my profile
    Then the dashboard was loaded correctly




    

