*** Settings ***
Resource      ../../Netflix/pagesobjects/PO_user_login_dashboard.robot
Resource      ../../Netflix/configuration/configuration-dev.robot


Library    OperatingSystem
Library    Selenium2Library


#Sección donde creo los keywords, con las frases clave que se crearon en el archivo de specs.
*** Keywords ***

#StepDefinition para pasos iniciales de la prueba, poder ingresar a cuenta de Netflix.
User acces to Netflix account
    Given I click in the login button
    when I set user and password
    and I click in the "Iniciar sesión" button
    Then I can acces the to profiles screen


#StepDefinition para validar que se pueda llegar a la pantalla de seleccionar perfil en Netflix
I am in the profiles screen
    Given I verify to be on profiles screen
    When I click on my profile
    Then I can access to the dashboard

#StepDefiniton para comprobar que se pudo llegar al dashboard en perfil de Netflix.
I am in the dashboard page
    Given I verify the dashboard
    and I can see the elements from my profile
    Then the dashboard was loaded correctly




    

