Feature: HU11 - Publicación de artículos 
    Scenario: Crear publicación 
    Given que el usuario accede a la sección de trueques, 
    When completa los campos “nombre”, “descripción”, “foto”,
    Then la app guarda la publicación y la muestra en el listado general 

    Example: 
        | Usuario      | Nombre del artículo | Descripción               | Foto          |
        | Juan Pérez   | Libro de cocina     | Libro con recetas variadas| libro.jpg     |
        | María Gómez  | Bicicleta usada     | Bicicleta en buen estado  | bici.jpg      |
        | Carlos Ruiz  | Ropa de invierno    | Abrigos y suéteres        | ropa.jpg      |

    Scenario: Validación de campos 
    Given que falta información obligatoria, 
    When el usuario intenta publicar,  
    Then el sistema muestra un mensaje de error indicando qué falta

    Example: 
        | Usuario      | Campo obligatorio   | Mensaje de error                         |
        | Juan Pérez   | Nombre del artículo | "El nombre del artículo es obligatorio." |
        | María Gómez  | Descripción         | "La descripción no puede estar vacía."   |
        | Carlos Ruiz  | Foto                | "Debe subir una foto del artículo."      |