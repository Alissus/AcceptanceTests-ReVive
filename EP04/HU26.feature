Feature: Verificación de usuario 
    Scenario: Verificación exitosa 
    Given que el usuario sube su documento o valida su correo, 
    When el sistema confirma los datos, 
    Then el perfil se marca con un distintivo de “Verificado”. 

    Example: 
        | Usuario       | Método de verificación | Documento/Correo               |
        | Juan Pérez    | Documento              | DNI: 12345678                  |
        | María López   | Correo                 | DNI: 22145575                  |
        | Carlos Ruiz   | Documento              | Pasaporte: X1234567            |

    Scenario: Error en la verificación 
    Given que los datos ingresados no coinciden, 
    When el sistema detecta la inconsistencia, 
    Then se muestra un mensaje solicitando una nueva validación. 

    Example: 
        | Usuario       | Método de verificación | Documento/Correo               | Mensaje mostrado                      |
        | Ana Gómez     | Documento              | DNI: 87654321                  | "Datos no coinciden, por favor intente nuevamente." |
        | Luis Fernández| Correo                 | DNI: 33445566                  | "Correo no verificado, revise su bandeja de entrada."  |
        | Elena Martínez| Documento              | Pasaporte: Y7654321            | "Documento inválido, suba una copia legible."            |

    Scenario: Revisión manual 
    Given que el sistema no logra validar automáticamente, 
    When se envía el caso a revisión, 
    Then el administrador puede aprobar o rechazar la verificación de manera manual.

    Example: 
        | Usuario       | Método de verificación | Documento/Correo               | Acción del administrador           |
        | Pedro Sánchez | Documento              | DNI: 11223344                  | Aprobado                           |
        | Laura Gómez   | Correo                 | DNI: 55667788                  | Rechazado                          |
        | Diego Torres  | Documento              | Pasaporte: Z9876543            | Aprobado                           |