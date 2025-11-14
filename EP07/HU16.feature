Feature: HU16 - Chat interno 
    Scenario: Iniciar chat 
    Given que el usuario acepta una propuesta, 
    When selecciona 'Enviar mensaje', 
    Then se abre una conversación en tiempo real. 
 
    Example: 
        | Usuario      | Propuesta aceptada                   | Conversación iniciada                  |
        | Juan Pérez   | Intercambio de libro por DVD         | Chat abierto entre Juan y María        |
        | María Gómez  | Intercambio de bicicleta por patines | Chat abierto entre María y Carlos      |
        | Carlos Ruiz  | Intercambio de ropa por juguetes     | Chat abierto entre Carlos y Ana        |

    Scenario: Notificación de nuevo mensaje 
    Given que un usuario recibe un mensaje, 
    When el sistema lo detecta, 
    Then se muestra una notificación en la app

    Example: 
        | Usuario      | Mensaje recibido                    | Notificación mostrada                  |
        | Juan Pérez   | "¿Cuándo podemos hacer el trueque?" | "Nuevo mensaje de María Gómez"         |
        | María Gómez  | "¿Dónde nos encontramos?"           | "Nuevo mensaje de Carlos Ruiz"         |
        | Carlos Ruiz  | "¿Traes el artículo mañana?"        | "Nuevo mensaje de Ana López"           |