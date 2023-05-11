*** Settings ***

Resource       ../../Netflix/configuration/configuration-dev.robot
Resource      ../../Netflix/specs/user_login_dashboard.robot
Resource      ../../Netflix/stepdefinitions/SD_user_login_dashboard.robot

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
${btn_log_in}    css:.btn.login-button.btn-submit.btn-small
${location} 
${login_title} 

${sign_in_label}    css:.e8zpj0e1.default-ltr-cache-khoql0
${id_userLoginId}    id:id_userLoginId
${id_password}    id:id_password
${profile_icon}    xpath:  //div[@class='profile-icon'][@data-profile-guid='GGRGWGCVZFDQTFIP2BH5ZKH6JU']

*** Keywords ***

I am in Netflix page
    Open Browser   ${URL_Netflix}  chrome
    Maximize Browser Window

I can see the login elements and continue
    Wait Until Element Is Visible    ${sign_in_label}
    ${location}=  Get location
    Log To Console    ${location}
    Sleep    2s

I click in the login button
    Click Element    ${sign_in_label}
    Sleep    2s

I set user and password
    # Escribe usuario
    Input Text    ${id_userLoginId}    ${USER_EMAIL}
    Sleep    3s
    # Escribe contraseña
    Input Text    ${id_password}    ${PASSWORD}
    Sleep    4s

I click in the "Iniciar sesión" button
    # Click en botón de iniciar sesión
    Click Element    ${btn_log_in}    
    ##...    /html/body/div[1]/div/div[3]/div/div/div[1]/form/button
    Sleep    3s
    
    
I can acces the to profiles screen
# Esperar que cargue la página de los perfiles
    Wait Until Element Is Visible    ${profile_icon}
    ##/html/body/div[1]/div/div/div[1]/div[1]/div[2]/div
    Sleep    3s


I am in the profiles screen
    Wait Until Element Is Visible    //div[@class='profile-icon' and @data-profile-guid='GGRGWGCVZFDQTFIP2BH5ZKH6JU']
    Sleep    2s


I click on my profile
    # Seleccionar mi perfil
    Click Element    //div[@class='profile-icon'][@data-profile-guid='GGRGWGCVZFDQTFIP2BH5ZKH6JU']
    Sleep    5s
    # Confirmar que se vea la opción de "mi Lista"
    Wait Until Element Is Visible    //a[@href="/browse/my-list"='Mi lista']
    Sleep    3s
    Close Browser

I can access to the dashboard
    

I am in the dashboard page
    

I can see the elements from my profile
    

the dashboard was loaded correctly
   
    



