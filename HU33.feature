Feature: HU33 Historial de cantidad de material recogido y vendido 
    Scenario: Acceso al historial del Reciclador 
    Given que accedo a “Mi historial”,  
    When selecciono el mes actual,  
    Then veo un resumen con cantidad, peso estimado y categorías recolectadas. 

    Example: 
        | Reciclador     | Mes seleccionado | Resumen mostrado                                      |
        | Juan Pérez     | Junio 2024       | Total: 50 kg, Cartón: 20 kg, Plástico: 15 kg, Vidrio: 15 kg |
        | María Gómez    | Mayo 2024        | Total: 30 kg, Papel: 10 kg, Aluminio: 20 kg          |
        | Carlos Ruiz    | Abril 2024       | Total: 40 kg, Plástico: 25 kg, Cartón: 15 kg         |

    Scenario: Historial por categoría 
    Given que el Reciclador quiere revisar sus materiales reciclables, recogidos y/o vendidos, pasados, 
    When filtra por categorías (ej. “Cartón”) en su historial, 
    Then la app muestra solo los objetos que fueron recogidos y/o vendidos en esa categoría, con fecha y ubicación. 

    Example: 
        | Reciclador     | Categoría filtrada | Historial mostrado                                      |
        | Juan Pérez     | Cartón            | 05/06/2024 - 10 kg - Colonia Centro, 15/06/2024 - 10 kg - Colonia Roma |
        | María Gómez    | Aluminio          | 12/05/2024 - 20 kg - Colonia Condesa                  |
        | Carlos Ruiz    | Plástico          | 08/04/2024 - 15 kg - Colonia Narvarte, 20/04/2024 - 10 kg - Colonia Juárez |

    Scenario: Visualización de estadísticas 
    Given que el reciclador ha registrado varias entregas en el mes, 
    When accede a “Mi impacto” desde el menú principal, 
    Then ve un resumen con total de kilos recolectados, categorías más frecuentes, ingresos estimados y equivalencia ecológica (ej. “Has evitado 12 kg de  CO₂”).

    Example:
        | Reciclador     | Mes seleccionado | Estadísticas mostradas                                      |
        | Juan Pérez     | Junio 2024       | Total recolectado: 50 kg, Categoría más frecuente: Cartón, Ingresos estimados: $250, CO₂ evitado: 15 kg |
        | María Gómez    | Mayo 2024        | Total recolectado: 30 kg, Categoría más frecuente: Aluminio, Ingresos estimados: $180, CO₂ evitado: 10 kg |
        | Carlos Ruiz    | Abril 2024       | Total recolectado: 40 kg, Categoría más frecuente: Plástico, Ingresos estimados: $200, CO₂ evitado: 12 kg |