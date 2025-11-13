Feature: HU19 - Reputación de usuarios 
    Scenario: Calificar usuario 
    Given que se completó un trueque o donación, 
    When el usuario selecciona una puntuación de 1 a 5 estrellas, 
    Then el sistema guarda la calificación y actualiza el promedio. 
 
    Example: 
        | Usuario que califica | Usuario calificado | Puntuación seleccionada | Puntuación promedio actualizada |
        | Juan Pérez           | María Gómez        | 5                       | 4.8                             |
        | María Gómez          | Carlos Ruiz        | 4                       | 4.5                             |
        | Carlos Ruiz          | Ana López          | 3                       | 4.2                             |

    Scenario: Ver reputación 
    Given que el usuario visita el perfil de otro, 
    When se muestra su puntuación promedio, 
    Then el sistema despliega comentarios y nivel de confiabilidad. 

    Example: 
        | Usuario visitante | Usuario visitado | Puntuación promedio mostrada| Comentarios desplegados                  | Nivel de confiabilidad |
        | Juan Pérez        | María Gómez      | 4.8                         | "Muy confiable y puntual."               | Oro                    |
        | María Gómez       | Carlos Ruiz      | 4.5                         | "Buen trato, pero llegó tarde."          | Plata                  |
        | Carlos Ruiz       | Ana López        | 4.2                         | "Artículo en buen estado, recomendable." | Bronce                 |