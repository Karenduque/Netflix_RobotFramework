***Settings***
***Test Cases***

*** Keywords ***
I am in Netflix page
   I open the url
   verify I am in the page
   I click on Login button

I open the url
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window

verify I am in the page
  ${title}=  Get Title
  Log To Console  ${title}

I click on Login button
  click element  ${}