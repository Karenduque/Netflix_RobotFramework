***Settings***
Library  Selenium2Library

Resource        ../../Netflix/stepdefinitions/SD_user_login_dashboard.robot        
Resource       ../../Netflix/configuration/configuration-dev.robot


***Test Cases***
User acces to dashboard
    Given that the Netflix login page is open
    And user proceeds to log in
    When user selects him profile
    Then the dashboard load correctly 


***Test Cases***
that the Netflix login page is open
    Given I am in Netflix page
    Then I can see the login elements and continue



*** Keywords ***
that the Netflix login page is open
    Given that the Netflix login page is open
    
user proceeds to log in
    Given I click in the login button

user selects him profile
    Given I am in the profiles screen

the dashboard load correctly 
    Then I am in the dashboard page