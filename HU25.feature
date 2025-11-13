Feature: HU25 - Dashboard de impacto con estadísticas personalizadas y logros alcanzados. 
    Scenario: Visualización de métricas de impacto 
    Given que el usuario ha realizado acciones en la app (donaciones, trueques, reciclajes), 
    When accede a su panel de impacto, 
    Then el sistema muestra métricas acumuladas: número de artículos donados, trueques realizados y materiales reciclados. 

    Example: 
        | Usuario      | Artículos donados | Trueques realizados | Material reciclado (kg) | Métricas mostradas                                     |
        | Juan Pérez   | 15                | 5                   | 20                      | "15 artículos donados, 5 trueques, 20 kg reciclados"   |
        | María Gómez  | 8                 | 3                   | 12                      | "8 artículos donados, 3 trueques, 12 kg reciclados"    |
        | Carlos Ruiz  | 20                | 7                   | 30                      | "20 artículos donados, 7 trueques, 30 kg reciclados"   |

    Scenario: Cálculo de impacto ambiental 
    Given que existen datos asociados a cada acción (peso, tipo de material, número de objetos), 
    When el sistema calcula el total, 
    Then se muestran indicadores estimados como “kg de residuos evitados” o “emisiones reducidas”. 

    Example: 
        | Usuario      | Artículos donados | Tipo de material    | Peso total (kg) | Indicadores mostrados                          |
        | Juan Pérez   | 15                | Plástico           | 10              | "10 kg de residuos evitados, 25 kg CO2 reducidos"|
        | María Gómez  | 8                 | Papel              | 5               | "5 kg de residuos evitados, 12 kg CO2 reducidos" |
        | Carlos Ruiz  | 20                | Vidrio             | 15              | "15 kg de residuos evitados, 35 kg CO2 reducidos"|

    Scenario: Desbloqueo de logros y recompensas simbólicas 
    Given que el usuario alcanza hitos (por ejemplo, 10 donaciones o 5 trueques), 
    When cumple un objetivo, 
    Then el sistema otorga insignias o reconocimientos visibles en su perfil

    Example: 
        | Usuario      | Hito alcanzado          | Logro desbloqueado                      |
        | Juan Pérez   | 10 donaciones           | "Insignia de Donador Comprometido"     |
        | María Gómez  | 5 trueques              | "Insignia de Trueque Experto"          |
        | Carlos Ruiz  | 20 kg reciclados        | "Insignia de Eco-Guerrero"             |