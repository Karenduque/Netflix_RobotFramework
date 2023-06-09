***Settings***
Library  Selenium2Library

Resource        ../../Netflix/stepdefinitions/SD_user_login_dashboard.robot        
Resource       ../../Netflix/configuration/configuration-dev.robot

*** Test Cases ***
#Gherkin general para describir la prueba a realizar.
User acces to dashboard
    Given that the Netflix login page is open
    And user proceeds to log in
    When user selects him profile
    Then the dashboard load correctly 

#En la sección de Keywords de éste archivo, se definen las frases claves que se desarrollan en los step definiton.
*** Keywords ***
that the Netflix login page is open
    Given I am in Netflix page
    
user proceeds to log in
    Given User acces to Netflix account

user selects him profile
    Given I am in the profiles screen


the dashboard load correctly
    Given I am in the dashboard page

