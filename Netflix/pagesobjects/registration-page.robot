*** Settings ***
Resource      ../../Netflix/stepdefinitions/userRegistration-sd.robot
Resource       ../../Netflix/configuration/configuration-dev.robot


Library    Selenium2Library


*** Variables ***
${loginInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_username
${termConditionsCheckBox}  xpath: //*[contains(text(), "I unconditionally agree with")]
${passwordInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_password
${repeatPasswordInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_password_confirmation
${enterCodeInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_captcha
${enterCodeImg}  id:yw1
${registrationButton}  css:button.button--s1.button--t1
 
${button-Registration}  css=*[href="/user/registration"]
${location} 
${login_title} 


*** Keywords ***
I am in Netflix page
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window

I see the login fields
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/div/div/div/div/div/header/div/span[3]/a
    ${location}=  Get location
    Log To Console    ${location}
    Sleep    2s
    
I fill the email and password
    # Click al botón para ir a la ventana de iniciar sesión    
    Click element    xpath://*[@id="appMountPoint"]/div/div/div/div/div/div/header/div/span[3]/a
    Sleep    2s
    # Escribe usuario
    Input Text    id_userLoginId    ${USER_EMAIL}
    Sleep    3s
    # Escribe contraseña
    Input Text    id_password    ${PASSWORD}
    Sleep    4s
    # Click en botón de iniciar sesión
    Click Element    //button[@class='btn login-button btn-submit btn-small']    
    ##...    /html/body/div[1]/div/div[3]/div/div/div[1]/form/button
    Sleep    3s
    # Esperar que cargue la página de los perfiles
    Wait Until Element Is Visible    //div[@class='profile-icon'][@data-profile-guid='GGRGWGCVZFDQTFIP2BH5ZKH6JU']
    ##/html/body/div[1]/div/div/div[1]/div[1]/div[2]/div
    Sleep    3s
    

I see the Netflix Home page
    # Seleccionar mi perfil
    Click Element    //div[@class='profile-icon'][@data-profile-guid='GGRGWGCVZFDQTFIP2BH5ZKH6JU']
    Sleep    5s
    # Confirmar que se vea la opción de "mi Lista"
    Wait Until Element Is Visible    //a[@href="/browse/my-list"='Mi lista']
    Sleep    3s
    Close Browser



## De aquí en adelante casos pendientes de usar en registro, por ahora hago sólo login - 29-marzo-2023.    

Shows the message of creation not successful
  ${errorMessage}    Get Text    xpath=/html/body/div[1]/main/div/div[1]/div/div[2]/form/fieldset[1]/div[6]/div[2]
  Should Be Equal As Strings    ${errorMessage}    The verification code field cannot be empty.
  Close browser

Shows the mesaje of creation succesfull
  ${responseM1}    Get Text    xpath=/html/body/div[1]/main/div/div/div[2]/h1
  Should Be Equal As Strings    ${responseM1}    Congratulations!
  ${responseM2}    Get Text    xpath=/html/body/div[1]/main/div/div/div[2]/p
  Should Be Equal As Strings    ${responseM2}     Your registration has been successful
  Close browser

I fill the login
  Wait Until Element is Visible   ${loginInput}  30
  Input text   ${loginInput}    ${EMAIL_ADMIN}

I accept Terms & Conditions
  click element  ${termConditionsCheckBox}

I fill Password
  Wait Until Element is Visible   ${passwordInput}  30
  Input text   ${passwordInput}    ${PASSWORD}

I fill Repeat password
  Wait Until Element is Visible   ${repeatPasswordInput}  30
  Input text   ${repeatPasswordInput}    ${PASSWORD}

#Este codigo debe extraterse de la imagen, deberia hacerse con OCR
I fill Enter code
  ${codeImg}    Get Text    ${enterCodeImg}
  Wait Until Element is Visible   ${enterCodeInput}  30
  Input text   ${enterCodeInput}    ${codeImg}

I click on Registration button
  click element  ${registrationButton}    


