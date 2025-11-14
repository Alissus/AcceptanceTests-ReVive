Feature: HU14 - Filtros de materiales 
    Scenario: Filtrar por tipo 
    Given que el usuario selecciona “plástico”, “vidrio”, “papel”, “otros” 
    When aplica el filtro, 
    Then el sistema muestra los materiales correspondientes. 

    Example: 
        | Usuario      | Tipo de material| Materiales mostrados               |
        | Juan Pérez   | Plástico        | Botellas, Envases, Bolsas          |
        | María Gómez  | Vidrio          | Frascos, Botellas, Vasos           |
        | Carlos Ruiz  | Papel           | Periódicos, Revistas, Cartones     |
        | Ana López    | Otros           | Metales, Electrónicos, Textiles    |

    Scenario: Filtrar por ubicación 
    Given que el usuario habilita el GPS, 
    When aplica el filtro 'cerca de mí', 
    Then se muestran los materiales disponibles en su zona.

    Example: 
        | Usuario      | Ubicación       | Materiales cercanos                 |
        | Juan Pérez   | Centro          | Botellas de plástico, Periódicos    |
        | María Gómez  | Norte           | Frascos de vidrio, Cartones         |
        | Carlos Ruiz  | Sur             | Envases de plástico, Revistas       |
        | Ana López    | Este            | Metales, Textiles                   |