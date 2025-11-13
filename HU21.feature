Feature: Creación de campañas 
    Scenario: Creación exitosa de campaña 
    Given que el administrador completa todos los campos requeridos, 
    When guarda la publicación, 
    Then el sistema muestra la campaña en la sección “Activas” con su respectiva información. 

    Example: 
        | Administrador | Título de campaña      | Descripción                      | Fecha Inicio | Fecha Fin   | Estado   |
        | Ana López     | Reciclaje en mi barrio | Campaña para recolectar plásticos| 01/07/2024   | 31/07/2024  | Activa   |
        | María Gómez   | Donación de libros     | Recolecta libros para niños      | 05/07/2024   | 20/07/2024  | Activa   |
        | Carlos Ruiz   | Limpieza de parques    | Jornada de limpieza comunitaria  | 10/07/2024   | 25/07/2024  | Activa   |

    Scenario: Validación de campos obligatorios 
    Given que el administrador deja campos vacíos, 
    When intenta publicar la campaña, 
    Then el sistema muestra un mensaje indicando qué campo debe completarse. 

    Example: 
        | Administrador | Título de campaña  | Descripción                      | Fecha Inicio | Fecha Fin   | Mensaje de error                     |
        | Ana López     |                    | Campaña para recolectar plásticos| 01/07/2024   | 31/07/2024  | "El título es obligatorio."          |
        | María Gómez   | Donación de libros |                                  | 05/07/2024   | 20/07/2024  | "La descripción es obligatoria."     |
        | Carlos Ruiz   | Limpieza de parques| Jornada de limpieza comunitaria  |              | 25/07/2024  | "La fecha de inicio es obligatoria." |

    Scenario: Confirmación visual tras publicar 
    Given que la campaña fue creada correctamente, 
    When el sistema la registre, 
    Then se muestra un mensaje de confirmación indicando “Campaña publicada exitosamente”.

    Example: 
        | Administrador    | Título de campaña       | Mensaje de confirmación                |
        | Ana López        | Reciclaje en mi barrio  | "Campaña publicada exitosamente"       |
        | María Gómez      | Donación de libros      | "Campaña publicada exitosamente"       |
        | Carlos Ruiz      | Limpieza de parques     | "Campaña publicada exitosamente"       |