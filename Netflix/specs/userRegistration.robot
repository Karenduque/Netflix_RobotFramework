***Settings***
Library  Selenium2Library

Resource       ../../Netflix/pagesobjects/registration-page.robot
Resource       ../../Netflix/facades/Netflix-facade.robot

***Test Cases***
Correct user registration
   Given the Netflix page is open
    #When the registration data are completed
    #Then the user was created

User Log in
    Given I am a user in Netflix
    Then The user procceds to log in
#Incorrect user registration without Code
   #Given the Netflix page is open
    #When the registration data are not completed
    #Then the user was not created

*** Keywords ***
the Netflix page is open
    Given registration-page.I am in Netflix page
    And Print title of Netflix home
    #And the registration option was selected

I am a user in Netflix
    Given registration-page.I am in Netflix page
    Then Print title of Netflix home


The user procceds to log in
    Given The user can see "Iniciar Sesion" button
    Then User clicks on "Iniciar Sesion" button
    And User can see the login form


the registration data are completed
    When the data filled correnctly

the registration data are not completed
    When the data filled incorrectly

the user was not created
    Then shows the message of creation not successful

the user was created
    Then shows the mesaje of creation succesfull


    

