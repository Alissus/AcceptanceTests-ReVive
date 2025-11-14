Feature: HU03 - Gestión de solicitudes de materiales reciclables
    Scenario: Registro de solicitud
    Given que usuario está reciclado como reciclador en la aplicación y ha completado su perfil con información sobre su ocupación, 
    When accede a la opción “Solicita material reciclable” desde su panel de reciclador,
    Then el sistema mostrará un formulario estructurado donde podrá registrar sus datos de contacto y seleccionar el tipo de material reciclable requerido. 

    Example: 
        |reciclador    |Solicita material       | formulario                                                            |
        |Ana López     |Formulario de solicitud | Nombre: "Ana López", Tipo de material: "Cartón", Cantidad: "60 kg", Fecha requerida: "10/05/2024"|
        |Luis Martínez |Formulario de solicitud | Nombre: "Luis Martínez", Tipo de material: "Metal", Cantidad: "80 kg", Fecha requerida: "12/05/2024"|
        |Sofía Ramírez |Formulario de solicitud | Nombre: "Sofía Ramírez", Tipo de material: "Electrónicos", Cantidad: "20 kg", Fecha requerida: "15/05/2024"|

    Scenario: Confirmación de solicitud registrada correctamente
    Given que el reciclador ha completado correctamente todos los campos obligatorios del formulario de solicitud de material reciclable, 
    When presiona el botón "Registrar solicitud", 
    Then el sistema confirmará el registro exitoso con un mensaje en pantalla y la solicitud se mostrará en su historial de solicitudes activas

    Example: 
        |reciclador     |Registrar solicitud | confirmación                                                          |    
        |Ana López      |Solicitud registrada| "Su solicitud de material reciclable ha sido registrada exitosamente."|
        |Luis Martínez  |Solicitud registrada| "Su solicitud de material reciclable ha sido registrada exitosamente."|
        |Sofía Ramírez  |Solicitud registrada| "Su solicitud de material reciclable ha sido registrada exitosamente."|