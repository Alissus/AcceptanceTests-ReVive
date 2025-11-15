Feature: Gestión de inventario y coordinación de recolecciones (registro, estado y asignación logística 
    Scenario: Registrar recepción en inventario 
    Given que un donante entrega o se registra la recepción de artículos para una campaña, 
    When el administrador añade los detalles (tipo, cantidad, estado, fotos) y guarda, 
    Then el sistema crea una entrada en el inventario asociada a la campaña y muestra el stock actualizado. 

    Example: 
        | Campaña              | Tipo de artículo  | Cantidad | Estado       |
        | Ropa para todos      | Camisetas         | 100      | Nuevo        |
        | Juguetes para niños  | Muñecas           | 50       | Usado        |
        | Muebles para hogares | Sillas            | 20       | Buen estado  |

    Scenario: Solicitar y coordinar recolecciones 
    Given que la campaña necesita recoger artículos en un lugar determinado, 
    When el administrador crea una solicitud de recolección con dirección, fecha y volumen estimado, 
    Then el sistema publica la solicitud en el panel logístico y permite asignar voluntarios o proveedores de transporte. 

    Example: 
        | Campaña              | Dirección de recolección           | Fecha       | Volumen estimado |
        | Ropa para todos      | Calle Falsa 123, Ciudad A          | 2024-07-10  | 200 kg           |
        | Juguetes para niños  | Avenida Siempre Viva 456, Ciudad B | 2024-07-12  | 150 kg           |
        | Muebles para hogares | Plaza Central 789, Ciudad C        | 2024-07-15  | 300 kg           |

    Scenario: Generar reporte de estado de inventario 
    Given que el administrador solicita un informe, 
    When elige parámetros (rango de fechas, categorías, estado: recibido/pendiente/distribuido), 
    Then el sistema genera y descarga un reporte con totales, ítems pendientes y métricas por campaña. 

    Example: 
        | Rango de fechas         | Categoría         | Estado       | Total ítems  | Ítems pendientes |
        | 2024-06-01 a 2024-06-30 | Ropa              | Recibido     | 500          | 50               |
        | 2024-06-01 a 2024-06-30 | Juguetes          | Pendiente    | 300          | 100              |
        | 2024-06-01 a 2024-06-30 | Muebles           | Distribuido  | 200          | 0                |