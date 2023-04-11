***Settings***
Library  Selenium2Library

Resource       ../../Netflix/pagesobjects/registration-page.robot
Resource       ../../Netflix/facades/Netflix-facade.robot

***Test Cases***
Scenario: Correct restart membership 
   Given I am on the restart membership page
   When I enter the correct data
   Then I restart membership
  

*** Keywords ***
I enter the correct data
  Given I do step one correctly
   And I do step two correctly
   And I do step three correctly
  Then Netflix verifies the correct information


I restart membership
   Given the membership is active
   Then I am on the platform


  
   