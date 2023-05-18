***Settings***


*** Keywords ***
Dado que ingreso cuenta de correo para adquirir membresia
  ingreso correo 
  hago click en el boton siguiente 
  
Dado que estoy en el paso uno
   estoy en el paso uno de gestionar membresia
   ingreso la contraseña
   hago click en el boton siguiente
   puedo pasar al paso dos

Dado que selecciono el plan de membresia
   estoy en el paso dos de gestionar membresia
   se genera el detallle de todos los planes
   hago click en la categoria deseada
   hago click en el boton siguiente
   puedo pasar al paso tres

Dado que finaliza el registro de membresia
   estoy en el paso tres de gestionar membresia
   se genera el detallle de todos los campos a diligenciar del medio de pago
   diligencio todos los datos correctamente
   hago click en el boton Iniciar pago
   se crea la membresia


ingreso correo 
  Wait Until Element is Visible   ${emailMembresia}  30
  Input text   ${emailMembresia}    lukitasalinas@gmail.com

hago click en el boton siguiente 


estoy en el paso uno de gestionar membresia


ingreso la contraseña


hago click en el boton siguiente


puedo pasar al paso dos
