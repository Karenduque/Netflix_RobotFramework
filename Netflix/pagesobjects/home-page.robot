*** Settings ***

*** Variables ***

${emailInput}  css=input[name='email']
${getStartedButton}  css:.e1ax5wel1.default-ltr-cache-1n9pf0
##${netflixImg}  xpath
##${languageSelect}  xpath
##${signInButton}  xpath

*** Keywords ***
I enter the email
  Wait Until Element is Visible   ${emailInput}  30
  Input text   ${emailInput}    osmanyqy@yahoo.com

I click get started button
  click element  ${getStartedButton}