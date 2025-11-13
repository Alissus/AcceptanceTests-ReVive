Feature: HU13 - Confirmación de trueques 
    Scenario: Aceptar propuesta 
    Given que el usuario recibe una solicitud de intercambio, 
    When acepta la propuesta, 
    Then el sistema confirma el trueque y notifica a ambos usuarios. 
 
    Example: 
        | Usuario      | Propuesta de trueque                | Notificación enviada                      |
        | Juan Pérez   | Intercambio de libro por DVD        | "Trueque confirmado entre Juan y María."  |
        | María Gómez  | Intercambio de bicicleta por patines| "Trueque confirmado entre María y Carlos."|
        | Carlos Ruiz  | Intercambio de ropa por juguetes    | "Trueque confirmado entre Carlos y Ana."  |

    Scenario: Rechazar propuesta 
    Given que el usuario no desea el intercambio, 
    When rechaza la solicitud, 
    Then el sistema elimina la propuesta y notifica al solicitante.

    Example: 
        | Usuario      | Propuesta de trueque                | Notificación enviada                   |
        | Juan Pérez   | Intercambio de libro por DVD        | "Trueque rechazado por Juan."          |
        | María Gómez  | Intercambio de bicicleta por patines| "Trueque rechazado por María."         |
        | Carlos Ruiz  | Intercambio de ropa por juguetes    | "Trueque rechazado por Carlos."        |