***Settings***
Library  Selenium2Library

Resource       ../../Netflix/pagesobjects/registration-page.robot
Resource       ../../Netflix/facades/Netflix-facade.robot

***Test Cases***
Correct user registration
   Given the Netflix page is open
    #When the registration data are completed
    #Then the user was created

#Incorrect user registration without Code
   #Given the Netflix page is open
    #When the registration data are not completed
    #Then the user was not created

*** Keywords ***
the Netflix page is open
    Given I am in Netflix page
    And Print title of Netflix home
    #And the registration option was selected
    
the registration data are completed
    When the data filled correnctly

the registration data are not completed
    When the data filled incorrectly

the user was not created
    Then shows the message of creation not successful

the user was created
    Then shows the mesaje of creation succesfull