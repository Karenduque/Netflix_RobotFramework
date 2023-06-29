*** Settings ***

*** Variables ***
${step1Of3Span}  css:.stepIndicator
${welcomeBackH1}  css:.stepTitle  

*** Keywords ***
Netflix redirects me to the restart membership page
  Wait Until Element Is Visible    ${welcomeBackH1}
  ${saveVariable}    Get Text    ${welcomeBackH1}
  Sleep  10s
  Should Be Equal As Strings    ${saveVariable}    Finish setting up your account
  Sleep  10s 

I am in step one of restart membership
  Wait Until Element Is Visible    ${step1Of3Span}
  ${verifyingFirstStep}    Get Text    ${step1Of3Span}
  Sleep  10s
  Should Be Equal As Strings    ${verifyingFirstStep}    STEP 1 OF 3