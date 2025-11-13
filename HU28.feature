Feature: HU28 - Reporte de contenido 
    Scenario: Envío de reporte 
    Given que el usuario visualiza una publicación, 
    When selecciona la opción “Reportar”, 
    Then el sistema envía la alerta al equipo de revisión. 

    Example: 
        | Usuario      | Publicación visualizada       | Tipo de reporte          | Confirmación mostrada                     |
        | Juan Pérez   | Artículo inapropiado          | Contenido ofensivo       | "Reporte enviado al equipo de revisión"  |
        | María Gómez  | Foto con spam                 | Spam                     | "Reporte enviado al equipo de revisión"  |
        | Carlos Ruiz  | Comentario abusivo            | Abuso verbal             | "Reporte enviado al equipo de revisión"  |

    Scenario: Confirmación del reporte 
    Given que el reporte fue enviado, 
    When el sistema procesa la solicitud, 
    Then se muestra un mensaje confirmando que fue recibido. 

    Example: 
        | Usuario      | Publicación visualizada       | Tipo de reporte          | Mensaje mostrado                          |
        | Juan Pérez   | Artículo inapropiado          | Contenido ofensivo       | "Tu reporte ha sido recibido. Gracias."  |
        | María Gómez  | Foto con spam                 | Spam                     | "Tu reporte ha sido recibido. Gracias."  |
        | Carlos Ruiz  | Comentario abusivo            | Abuso verbal             | "Tu reporte ha sido recibido. Gracias."  |

    Scenario: Bloqueo temporal del contenido 
    Given que el reporte fue validado, 
    When el equipo de moderación lo aprueba, 
    Then la publicación se bloquea temporalmente hasta revisión final.

    Example:
        | Usuario      | Publicación visualizada       | Tipo de reporte          | Estado del contenido                     |
        | Juan Pérez   | Artículo inapropiado          | Contenido ofensivo       | "Bloqueado temporalmente"                |
        | María Gómez  | Foto con spam                 | Spam                     | "Bloqueado temporalmente"                |
        | Carlos Ruiz  | Comentario abusivo            | Abuso verbal             | "Bloqueado temporalmente"                |