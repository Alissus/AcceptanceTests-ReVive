Feature: HU05 - Geolocalización de centros donativos
    Scenario: Visualización de centros cercanos en el mapa interactivo 
    Given que el ciudadano se encuentra en la vista del mapa y ha activado los permisos de geolocalización, 
    When navega por la pantalla, 
    Then el sistema mostrará íconos representativos encima de los centros de donación disponibles cerca de su ubicación.

    Example: 
        | Ciudad         | Centro de donación         | Distancia aproximada |
        | Ciudad A       | Centro Donativo 1          | 500 metros           |
        | Ciudad B       | Centro Donativo 2          | 1 kilómetro          |
        | Ciudad C       | Centro Donativo 3          | 2 kilómetros         | 

    Scenario: Acceso a información de centro de donación desde el mapa
    Given que el ciudadano visualizó un ícono representativo de un centro de donación en el mapa, 
    When presiona el ícono, 
    Then el sistema mostrará una pantalla con los datos del centro: nombre, dirección, horario de atención, tipo de objetos que reciben y campañas activas

    Example: 
        | Centro donación   | Dirección                  | Horario de atención     | Objetos que reciben       | Campañas activas               |
        | Almas Caritativas | Calle los olivos 123, Comas| Lunes a Viernes 9am-5pm | Ropa, Alimentos           | Campaña ABC: Ropa para todos   |
        | Centro Donativo 2 | Avenida Siempre Viva 456, Ciudad B | Martes a Sábados 10am-6pm | Juguetes, Libros                  | Campaña XYZ: Juguetes para niños|
        | Centro Donativo 3 | Plaza Central 789, Ciudad C | Miércoles a Domingos 8am-4pm | Muebles, Electrónicos             | Campaña 123: Muebles para hogares|