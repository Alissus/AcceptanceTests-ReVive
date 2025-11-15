Feature: Gestión de perfil 
    Scenario: Editar información 
    Given que el usuario entra a “Mi perfil”, 
    When modifica su “nombre”,  
    Then el sistema guarda los cambios exitosamente. 

    Example: 
        | Usuario       | Nombre original | Nuevo nombre    |
        | Juan Pérez    | Juan Pérez      | Juan P. Gómez   |
        | María López   | María López     | María L. Sánchez|
        | Carlos Ruiz   | Carlos Ruiz     | Carlos R. Díaz  |

    Scenario: Cambiar preferencias 
    Given que el usuario quiere ajustar las notificaciones, 
    When selecciona los canales preferidos, 
    Then el sistema actualiza sus preferencias correctamente. 

    Example: 
        | Usuario       | Preferencias originales      | Nuevas preferencias            |
        | Ana Gómez     | Email, SMS                   | Email, Push Notifications      |
        | Luis Fernández| Push Notifications           | SMS                            |
        | Elena Martínez| Email                        | Email, SMS, Push Notifications |