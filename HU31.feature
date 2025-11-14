Feature: HU31 - Geolocalización de centros de acopio 
    Scenario: Usar geolocalización para buscar lugares 
    Given el Reciclador ingresa a la sección “Reciclaje” dentro del apartado “Servicios” de la app,  
    When selecciona “Mapa interactivo”,  
    Then se marcará en un mapa todos los lugares disponibles, priorizando los cercanos. 

    Example: 
        | Reciclador     | Ubicación actual         | Lugares mostrados en el mapa                    |
        | Juan Pérez     | Ciudad de México         | Centro A (2 km), Punto B (3 km), Centro C (5 km)|
        | María Gómez    | Guadalajara              | Punto D (1 km), Centro E (4 km), Punto F (6 km) |
        | Carlos Ruiz    | Monterrey                | Centro G (3 km), Punto H (5 km), Centro I (7 km)|

    Scenario: Categorías en el mapa  
    Given que el reciclador tiene principalmente cartón y plástico,  
    When aplica el filtro “Material: Cartón, Plástico” en la búsqueda,  
    Then el mapa y el listado muestran solo los puntos que compran o reciben esos materiales.  

    Example: 
        | Reciclador     | Materiales disponibles      | Lugares mostrados en el mapa                      |
        | Juan Pérez     | Cartón, Plástico            | Centro A (Cartón, Plástico), Punto B (Plástico)   |
        | María Gómez    | Vidrio, Papel               | Punto D (Vidrio), Centro E (Papel)                |
        | Carlos Ruiz    | Aluminio, Plástico          | Centro G (Aluminio), Punto H (Plástico)           |

    Scenario: Contacto directo con el punto  
    Given que el reciclador encuentra un centro de acopio cercano,  
    When toca el marcador y abre la ficha del lugar,  
    Then puede ver horarios, precios estimados, y enviar un mensaje directo para confirmar disponibilidad 

    Example: 
        | Reciclador     | Centro de acopio seleccionado | Información mostrada en la ficha                          |
        | Juan Pérez     | Centro A                      | Horarios: 9am-6pm, Precios: $0.50/kg plástico, Mensaje: "¿Tienen disponibilidad para hoy?" |
        | María Gómez    | Punto D                       | Horarios: 10am-5pm, Precios: $0.30/kg vidrio, Mensaje: "¿Puedo llevar 10 kg mañana?"      |
        | Carlos Ruiz    | Centro G                      | Horarios: 8am-4pm, Precios: $0.40/kg aluminio, Mensaje: "¿Aceptan aluminio este fin de semana?" |