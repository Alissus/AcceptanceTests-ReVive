Feature: HU36 - Swipe para intercambio 
    Scenario: Aceptar iniciar el intercambio 
    Given que estoy en la vista swipe,  
    When deslizo la tarjeta de un objeto hacia la derecha,  
    Then el usuario se dirige a un chat con el dueño del objeto 

    Example: 
        | Usuario      | Objeto deslizado               | Acción realizada                          |
        | Juan Pérez   | Silla de oficina               | Redirigido al chat con el dueño del objeto|
        | María Gómez  | Mesa de comedor                | Redirigido al chat con el dueño del objeto|
        | Carlos Ruiz  | Lámpara de pie                 | Redirigido al chat con el dueño del objeto|

    Scenario: Rechazo por desinterés 
    Given que estoy en la vista swipe, 
    When deslizo la tarjeta de un objeto hacia la izquierda, 
    Then el objeto se descarta temporalmente y no vuelve a aparecer en mi pila de tarjetas. 

    Example: 
        | Usuario      | Objeto deslizado               | Acción realizada                         |
        | Juan Pérez   | Silla de oficina               | Objeto descartado temporalmente          |
        | María Gómez  | Mesa de comedor                | Objeto descartado temporalmente          |
        | Carlos Ruiz  | Lámpara de pie                 | Objeto descartado temporalmente          |