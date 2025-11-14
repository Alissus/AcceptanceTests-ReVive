Feature: HU12 - Filtro de búsqueda de objetos 
    Scenario: Filtrar por categoría 
    Given que el usuario selecciona una categoría, 
    When aplica el filtro,
    Then se muestran solo los objetos de esa categoría. 

    Example: 
        | Usuario      | Categoría       | Objetos mostrados                   |
        | Juan Pérez   | Ropa            | Camisetas, Pantalones, Abrigos      |
        | María Gómez  | Electrónicos    | Teléfonos, Computadoras, Tablets    |
        | Carlos Ruiz  | Muebles         | Sillas, Mesas, Sofás                |
        | Ana López    | Juguetes        | Muñecas, Autos, Rompecabezas        |