Feature: HU04 - Gestión de campañas donativas
    Scenario: Registro de campaña donativa
    Given que el usuario está registrado como administrador de donaciones en la aplicación,
    When accede a la opción “Crear campaña” desde su panel de administrador, 
    Then el sistema mostrará un formulario estructurado donde podrá registrar los datos de la institución, el objetivo de la campaña, y los tipos de donativos requeridos. 

    Example: 
        | Institución         | Objetivo de la campaña         | Tipos de donativos requeridos       |
        | Fundación ABC       | Recaudar fondos para educación | Material escolar                    |
        | ONG Salud para Todos| Proveer atención a los pobres  | Medicamentos, Comida, ropa          |
        | Asociación Verde    | Promover reforestación         | Árboles, Herramientas de jardinería |

    Scenario: Registro de campaña incompleto o inválido
    Given que el administrador institucional accedió al formulario para registrar una nueva campaña de donación, 
    When intenta registrar la campaña sin completar todos los campos obligatorios o con datos inválidos, 
    Then el sistema no permitirá continuar y mostrará mensajes de error específicos junto a los campos que deben corregirse o completarse. 

    Example: 
        | Campo obligatorio          | Error mostrado                          |
        | Institución                | "El nombre de la institución es obligatorio." |
        | Objetivo de la campaña     | "El objetivo de la campaña no puede estar vacío." |
        | Tipos de donativos requeridos | "Debe seleccionar al menos un tipo de donativo." |