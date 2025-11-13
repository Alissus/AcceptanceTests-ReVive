Feature: HU23 - Historial del usuario 
    Scenario: Visualizar todas las transacciones 
    Given que el usuario accede a su perfil, 
    When selecciona la opción “Historial”, 
    Then el sistema muestra una lista con sus donaciones e intercambios realizados. 

    Example: 
        | Usuario      | Transacciones realizadas                  | Detalles mostrados                                      |
        | Juan Pérez   | Donación de libros, Intercambio de DVD    | Fecha, Tipo de transacción, Objeto, Usuario involucrado |
        | María Gómez  | Donación de ropa, Intercambio de bicicleta| Fecha, Tipo de transacción, Objeto, Usuario involucrado |
        | Carlos Ruiz  | Donación de juguetes, Intercambio de ropa | Fecha, Tipo de transacción, Objeto, Usuario involucrado |

    Scenario: Mostrar estadísticas de impacto 
    Given que el usuario tiene múltiples registros, 
    When visualiza su historial, 
    Then el sistema muestra estadísticas como kilos reciclados o número de objetos donados. 

    Example: 
        | Usuario      | Transacciones realizadas                   | Estadísticas mostradas                     |
        | Juan Pérez   | Donación de libros, Intercambio de DVD     | 15 objetos donados, 10 kg reciclados       |
        | María Gómez  | Donación de ropa, Intercambio de bicicleta | 8 objetos donados, 12 kg reciclados        |
        | Carlos Ruiz  | Donación de juguetes, Intercambio de ropa  | 20 objetos donados, 15 kg reciclados       |

    Scenario: Historial vacío 
    Given que el usuario aún no ha realizado transacciones, 
    When ingresa a la sección “Historial”, 
    Then el sistema muestra un mensaje que indica “Aún no tienes actividades registradas”. 

    Example: 
        | Usuario      | Transacciones realizadas | Mensaje mostrado                                  |
        | Luis Martínez| Ninguna                  | "Aún no tienes actividades registradas"           |
        | Sofia Torres | Ninguna                  | "Aún no tienes actividades registradas"           |
        | Pedro Gómez  | Ninguna                  | "Aún no tienes actividades registradas"           |