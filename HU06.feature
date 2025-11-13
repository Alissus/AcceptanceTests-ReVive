Feature: Rastreo de la donación
    Scenario: Visualización del estado de donación registrada
    Given que el ciudadano realizó una donación registrada en una campaña activa, 
    When accede a la opción "Rastrear donación" desde su historial, 
    Then el sistema mostrará una barra de seguimiento con el progreso de la entrega, incluyendo fecha, ubicación, estado actual y una imagen del destino final. 

    Example: 
        | Ciudadano   | Campaña donativa        | Estado donación   | Fecha actualización    |Ubicación          | Imagen         |
        | Juan Pérez  | Ropa para todos         | En tránsito       | 2024-05-01             | Centro de distribución  | imagen1.jpg                      |
        | María Gómez | Alimentos para familias | Entregado         | 2024-04-28             | Hogar receptor          | imagen2.jpg                      |
        | Carlos Ruiz | Juguetes para niños     | Para enviar       | 2024-05-03             | Almacén central         | imagen3.jpg                      |