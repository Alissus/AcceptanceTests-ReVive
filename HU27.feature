Feature: Gestión de eventos de trueque 
    Scenario: Crear feria de trueque 
    Given que el organizador completa título, descripción, ubicación, fecha/hora y capacidad, 
    When guarda el evento, 
    Then el sistema publica la feria en el calendario público con ficha de evento. 

    Example: 
        | Organizador     | Título del evento           | Ubicación            | Fecha/Hora          | Capacidad |
        | Marta Rodríguez | Trueque de libros           | Biblioteca Central   | 2024-08-15 10:00    | 50        |
        | Juan Gómez      | Feria de ropa y accesorios  | Parque Municipal     | 2024-09-05 14:00    | 100       |
        | Laura Sánchez   | Intercambio de juguetes     | Centro Comunitario   | 2024-10-20 11:00    | 75        |

    Scenario: Inscripción de participantes y listado de objetos 
    Given que la feria está publicada, 
    When un usuario se inscribe y añade un listado de los objetos que llevará para trueque, 
    Then aparece en la lista de asistentes con su inventario declarado. 

    Example: 
        | Usuario        | Evento                       | Objetos para trueque                     |
        | Carlos Pérez   | Trueque de libros            | "Cien años de soledad", "1984"           |
        | Ana Martínez   | Feria de ropa y accesorios   | "Camisa azul talla M", "Bolso rojo"      |
        | Luis Fernández | Intercambio de juguetes      | "Lego Star Wars", "Muñeca Barbie"        |

    Scenario: Cierre y reporte de resultados del trueque 
    Given que la feria finalizó, 
    When el organizador marca el evento como cerrado, 
    Then el sistema genera un resumen (n° asistentes, n° trueques realizados estimados, ítems destacados) y permite publicar evidencias (fotos, agradecimientos)

    Example: 
        | Evento                    | N° asistentes | N° trueques estimados | Ítems destacados                              |
        | Trueque de libros         | 45            | 30                    | "Cien años de soledad", "El principito"       |
        | Feria de ropa y accesorios| 80            | 60                    | "Camisa azul talla M", "Zapatos deportivos"   |
        | Intercambio de juguetes   | 70            | 50                    | "Lego Star Wars", "Muñeca Barbie"             |