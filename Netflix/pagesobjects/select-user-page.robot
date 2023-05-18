***Settings***
Library  Selenium2Library

Resource       ../../Netflix/pagesobjects/registration-page.robot
Resource       ../../Netflix/configuration/configuration-dev.robot
Resource       ../../Netflix/facades/Netflix-facade

Library  Operatingsystem

***Variables***
${loginInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_username
${termConditionsCheckBox}  xpath: //*[contains(text(), "I unconditionally agree with")]
${passwordInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_password
${repeatPasswordInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_password_confirmation
${enterCodeInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_captcha
${enterCodeImg}  id:yw1
${registrationButton}  css:button.button--s1.button--t1


${SignIn-label}    css:.e1ax5wel1 default-ltr-cache-1arlfc3
${id-userLoginId}    id:id:id_userLoginId
${id-userPassword}    id:id_password
${SignIn-button}    css:.btn login-button.btn-submit.btn-small
${profile-Icon}    xpath:  //div[@class='profile-icon'][@data-profile-guid='CNENCONDBFAN5KFQ4PVAG447JA']
${My-ContentTitle}    css.row-header-title

*** Keywords ***