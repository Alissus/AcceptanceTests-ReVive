Feature: Registro manual de entrega de materiales reciclables   
    Scenario: Registro manual de entrega 
    Given que el reciclador ha completado una entrega en un centro de acopio, 
    When accede a la opción “Registrar entrega” desde su perfil o historial, & completa los campos de tipo de material, peso estimado, ubicación y monto recibido, 
    Then la entrega queda guardada en su historial y se actualiza su impacto mensual. 

    Example: 
        | Reciclador      | Tipo de material | Peso estimado | Ubicación           | Monto recibido |
        | Ana Gómez       | Plástico         | 15 kg         | Centro A, Ciudad X  | $30            |
        | Luis Fernández  | Papel            | 20 kg         | Centro B, Ciudad Y  | $25            |
        | Elena Martínez  | Vidrio           | 10 kg         | Centro C, Ciudad Z  | $15            |

    Scenario: Editar registro previo 
    Given que el reciclador accede a su historial de registros, 
    When selecciona un registro previo y le da a la opción de “Editar”, 
    Then el sistema muestra una vista previa editable para confirmar o corregir los datos, y al confirmar se actualiza su historial. 

    Example: 
        | Reciclador      | Registro original ID | Tipo de material | Peso estimado | Ubicación           | Monto recibido |
        | Ana Gómez       | 001                  | Plástico         | 15 kg         | Centro A, Ciudad X  | $30            |
        | Luis Fernández  | 002                  | Papel            | 20 kg         | Centro B, Ciudad Y  | $25            |
        | Elena Martínez  | 003                  | Vidrio           | 10 kg         | Centro C, Ciudad Z  | $15            |