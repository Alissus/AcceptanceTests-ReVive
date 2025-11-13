Feature: HU08 - Generación de rutas de recolección para recicladores
    Scenario: Visualización de ruta sugerida en el mapa 
    Given que el reciclador se encuentra registrado en la aplicación con su rol activo y ha seleccionado un tipo de material reciclable, 
    When accede a la opción "Ver ruta sugerida" desde el mapa interactivo, 
    Then el sistema mostrará en el mapa una trayectoria sugerida con puntos cercanos donde puede encontrar ese material, como restaurantes, imprentas, papelerías u otros locales asociados. 

    Example: 
        | Reciclador    | Material reciclable  | Punto cercano     | Dirección del punto cercano         | Distancia |
        | Ana López     | Papel                | Imprenta XYZ      | Calle Falsa 123, Ciudad A           | 300 m     |
        | Luis Martínez | Plástico             | Restaurante ABC   | Avenida Siempre Viva 456, Ciudad B  | 500 m     |
        | Carla Ruiz    | Vidrio               | Bar La Esquina    | Plaza Central 789, Ciudad C         | 200 m     |

    Scenario: Tipo de material no seleccionado 
    Given que el reciclador accede a la opción "Ver ruta sugerida" sin haber seleccionado previamente un tipo de material reciclable, 
    When intenta visualizar una ruta desplazándose por el mapa, 
    Then el sistema mostrará un mensaje solicitando que primero seleccione el tipo de material a recolectar para generar la ruta correspondiente. 

    Example: 
        | Reciclador    | Mensaje mostrado                                           |
        | Ana López     | "Por favor, seleccione un tipo de material reciclable para generar la ruta." |
        | Luis Martínez | "Por favor, seleccione un tipo de material reciclable para generar la ruta." |
        | Carla Ruiz    | "Por favor, seleccione un tipo de material reciclable para generar la ruta." |