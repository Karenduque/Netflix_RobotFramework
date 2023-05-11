*** Settings ***

*** Variables ***

${userLoginInput}  id:id_userLoginId
${passwordInput}  id:id_password
${loginBoton}  xpath://*[@id="appMountPoint"]/div/div[3]/div/div/div[1]/form/button 

*** Keywords ***
 
Given I open the url
Then verify that I am on the page