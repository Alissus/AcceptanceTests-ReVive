Feature: HU37 - Chat con IA 
    Scenario: Asistencia sobre funciones de la app 
    Given que el usuario está en la pantalla de inicio, 
    When toca el ícono de “Ayuda” y abre el chat con IA, 
    Then puede escribir preguntas como “¿Cómo publico una donación?” y recibe una guía paso a paso en segundos 

    Example: 
        | Usuario      | Pregunta realizada                    | Respuesta de la IA                                 |
        | Juan Pérez   | ¿Cómo publico una donación?           | "Para publicar una donación, ve a 'Donaciones', toca el botón '+' y completa los detalles del objeto." |
        | María Gómez  | ¿Cómo puedo ver mi historial?         | "Para ver tu historial, accede a 'Mi historial' desde el menú principal."                              |
        | Carlos Ruiz  | ¿Cómo contacto a un centro de acopio? | "Para contactar a un centro de acopio, ve a 'Reciclaje', selecciona 'Mapa interactivo', elige un centro y toca 'Contactar'." |

    Scenario: Recomendaciones personalizadas 
    Given que el usuario ha donado ropa y libros en el pasado, 
    When pregunta en el chat “¿Qué campañas hay para mí?”, 
    Then la IA sugiere eventos o publicaciones afines a sus intereses y ubicación. 

    Example: 
        | Usuario      | Historial de donaciones | Pregunta realizada          | Recomendación de la IA       |
        | Juan Pérez   | Ropa, Libros            | ¿Qué campañas hay para mí?  | "Hay una campaña de donación de ropa en tu área este fin de semana." |
        | María Gómez  | Juguetes, Electrónicos  | ¿Qué campañas hay para mí?  | "Se está organizando una colecta de juguetes el próximo mes cerca de ti." |
        | Carlos Ruiz  | Muebles, Herramientas   | ¿Qué campañas hay para mí?  | "Hay una campaña de recolección de muebles el sábado en tu localidad." |

    Scenario: Resolución de problemas técnicos 
    Given que el usuario no puede subir una foto, 
    When escribe “No puedo publicar mi objeto” en el chat, 
    Then la IA le ofrece soluciones como “Verifica permisos de cámara” o “Intenta desde otra red”, y si no se resuelve, deriva el caso a soporte humano. 

    Example:
        | Usuario      | Problema reportado              | Pregunta realizada          | Solución ofrecida por la IA        |
        | Juan Pérez   | No puede subir foto             | No puedo publicar mi objeto | "Verifica permisos de cámara o intenta desde otra red."    |
        | María Gómez  | Error al guardar cambios        | No puedo publicar mi objeto | "Intenta cerrar y reabrir la app, o verifica tu conexión a internet." |
        | Carlos Ruiz  | Pantalla se congela al publicar | No puedo publicar mi objeto | "Reinicia la app y asegúrate de tener la última versión instalada." |

    Scenario: Derivación a soporte humano 
    Given que la IA no se resuelve el problema del usuario, 
    When el usuario ya escribió varias especificaciones del problema, 
    Then la IA le ofrece derivar el caso a soporte humano. 

    Example: 
        | Usuario      | Problema persistente            | Pregunta realizada          | Acción de la IA             |
        | Juan Pérez   | No puede subir foto             | No puedo publicar mi objeto | "Derivar a soporte humano." |
        | María Gómez  | Error al guardar cambios        | No puedo publicar mi objeto | "Derivar a soporte humano." |
        | Carlos Ruiz  | Pantalla se congela al publicar | No puedo publicar mi objeto | "Derivar a soporte humano." |