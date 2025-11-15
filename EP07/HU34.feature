Feature: Landing Page 
    Scenario: Secciones del Landing Page 
    Given que ingreso a la página principal, 
    When hago scroll o uso el menú superior (“Inicio”, “Sobre nosotros”, “Servicios”), 
    Then accedo a cada sección sin perder el contexto ni recargar la página. 

    Example: 
        | Sección         | Elementos visibles                          | Acción esperada                          |
        | Inicio          | Banner principal, botones de acción         | Redirige a registro o login              |
        | Sobre nosotros  | Información de la organización, misión      | Muestra detalles al hacer clic           |
        | Servicios       | Lista de servicios ofrecidos, íconos        | Despliega más información al seleccionar |

    Scenario: Inicio de Sesión desde el landing page 
    Given que estoy en el banner principal, 
    When toco “Empieza YA”, 
    Then soy redirigido al registro o login de la app. 

    Example: 
        | Usuario          | Acción realizada         | Resultado esperado                     |
        | Nuevo usuario    | Toca “Empieza YA”        | Redirige a página de registro          |
        | Usuario existente| Toca “Empieza YA”        | Redirige a página de login             |

    Scenario: Categoría de objetos principales 
    Given que estoy en la sección “Categorías principales”, 
    When veo íconos como “Ropa”, “Libros”, “Electrónica”, 
    Then identifico rápidamente si mis objetos encajan 

    Example: 
        | Categoría       | Ícono mostrado            | Descripción breve                      |
        | Ropa            | Ícono de camiseta         | Donar ropa en buen estado              |
        | Libros          | Ícono de libro abierto    | Donar libros usados o nuevos           |
        | Electrónica     | Ícono de dispositivo      | Donar aparatos electrónicos funcionales|