*** Settings ***
Resource      ../../Netflix/pagesobjects/registration-page.robot
Resource      ../../Netflix/configuration/configuration-dev.robot

*** Keywords ***
The data filled correnctly
  I fill the login
  I accept Terms & Conditions
  I fill Password
  I fill Repeat password
  I fill Enter code
  I click on Registration button


Shows the message of creation not successful
  ${errorMessage}    Get Text    xpath=/html/body/div[1]/main/div/div[1]/div/div[2]/form/fieldset[1]/div[6]/div[2]
  Should Be Equal As Strings    ${errorMessage}    The verification code field cannot be empty.
  Close browser

