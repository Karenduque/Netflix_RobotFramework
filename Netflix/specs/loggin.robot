***Settings***
Library  Selenium2Library

Resource        ../../Netflix/stepdefinitions/loggin-sd.robot         
Resource       ../../Netflix/facades/Netflix-facade.robot         

***Test Cases***
#Login Scenario
 Given I am in Netflix page
 When I start session
 Then the user logs in

*** Keywords ***
I am in Netflix page
 Given that I open the url
 Then verify that I am on the page

I start session
 Given that I'm on the login page 
 When I fill in the required information
 Then  I can log in

the user logs in
 Then i am on the select profile page