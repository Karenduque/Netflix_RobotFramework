*** Settings ***
Resource      ../../Netflix/pagesobjects/registration-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot

*** Keywords ***
Given I do step one correctly
   Given I am in step one of restart membership
   When I enter the password 
   And I click next
   Then I can go to step two


And I do step two correctly
   Given I am in step two of restat membership
   When I select the ideal plan
   And I click next
   Then I can go to step three


And I do step three correctly
   Given I am in step three of restart membership
   When I review the information
   And I click start membership


Then Netflix verifies the correct information



Shows the message of creation not successful
  ${errorMessage}    Get Text    xpath=/html/body/div[1]/main/div/div[1]/div/div[2]/form/fieldset[1]/div[6]/div[2]
  Should Be Equal As Strings    ${errorMessage}    The verification code field cannot be empty.
  Close browser

