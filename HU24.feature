Feature: HU24 - Favoritos 
    Scenario: Agregar publicación a favoritos 
    Given que el usuario visualiza un artículo, 
    When presiona el ícono de estrella, 
    Then el sistema lo guarda en su lista de favoritos. 

    Example: 
        | Usuario      | Artículo visualizado        | Confirmación mostrada                    |
        | Juan Pérez   | Libro "Cien años de soledad"| "Artículo agregado a favoritos"          |
        | María Gómez  | Bicicleta de montaña        | "Artículo agregado a favoritos"          |
        | Carlos Ruiz  | Ropa infantil               | "Artículo agregado a favoritos"          |

    Scenario: Eliminar publicación de favoritos 
    Given que el artículo ya está en favoritos, 
    When el usuario vuelve a presionar el ícono, 
    Then el sistema lo elimina de la lista. 

    Example: 
        | Usuario      | Artículo en favoritos          | Confirmación mostrada                    |
        | Juan Pérez   | Libro "Cien años de soledad"   | "Artículo eliminado de favoritos"        |
        | María Gómez  | Bicicleta de montaña           | "Artículo eliminado de favoritos"        |
        | Carlos Ruiz  | Ropa infantil                  | "Artículo eliminado de favoritos"        |

    Scenario: Acceso rápido a favoritos 
    Given que el usuario tiene publicaciones guardadas, 
    When ingresa a la sección “Favoritos”, 
    Then el sistema muestra todas las publicaciones marcadas

    Example: 
        | Usuario      | Artículos en favoritos                         | Detalles mostrados                            |
        | Juan Pérez   | Libro "Cien años de soledad", Revista "NatGeo" | Título, Descripción, Fecha de agregado        |
        | María Gómez  | Bicicleta de montaña, Casco de ciclismo        | Título, Descripción, Fecha de agregado        |
        | Carlos Ruiz  | Ropa infantil, Juguetes                        | Título, Descripción, Fecha de agregado        |