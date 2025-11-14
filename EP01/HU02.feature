Feature: HU02 - Gestión de solicitudes de materiales reciclables 
    Scenario: Registro de solicitud de material reciclable
    Given que el ciudadano se encuentra registrado como ecoemprendedor en la aplicación, 
    When accede a la opción “Solicita material reciclable” desde su panel de ecoemprendedor, 
    Then el sistema mostrará un formulario estructurado donde podrá registrar los datos del negocio y seleccionar el tipo de material reciclable requerido. 

    Example: 
        |ecoemprendedor |Solicita materiales    | formulario                                                    |
        |Juan Pérez     |Formulario de solicitud| Nombre del negocio: "EcoTienda", Tipo de material: "Plástico", Cantidad: "50 kg", Fecha requerida: "15/04/2024"|
        |María Gómez    |Formulario de solicitud| Nombre del negocio: "VerdeVida", Tipo de material: "Papel", Cantidad: "30 kg", Fecha requerida: "20/04/2024"|
        |Carlos Ruiz    |Formulario de solicitud| Nombre del negocio: "ReciclaMás", Tipo de material: "Vidrio", Cantidad: "40 kg", Fecha requerida: "18/04/2024"|

    Scenario: Confirmación de solicitud registrada correctamente
    Given que el ecoemprendedor ha completado correctamente todos los campos obligatorios del formulario de solicitud de material reciclable, 
    When presiona el botón "Registrar solicitud", 
    Then el sistema confirmará el registro exitoso con un mensaje en pantalla y la solicitud se mostrará en su historial de solicitudes activas.

    Example: 
        |ecoemprendedor |Registrar solicitud | confirmación                                                          |
        |Juan Pérez     |Solicitud registrada| "Su solicitud de material reciclable ha sido registrada exitosamente."|
        |María Gómez    |Solicitud registrada| "Su solicitud de material reciclable ha sido registrada exitosamente."|
        |Carlos Ruiz    |Solicitud registrada| "Su solicitud de material reciclable ha sido registrada exitosamente."|