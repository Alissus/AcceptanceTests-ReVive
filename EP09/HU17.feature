Feature: HU17 - Registro segmentado de usuarios 
    Scenario: Acceso para donantes
    Given que el usuario desea donar o intercambiar, 
    When completa los datos básicos y elige “Donante”, 
    Then el sistema crea la cuenta y muestra acceso al panel de donaciones. 

    Example: 
        | Usuario      | Datos básicos                | Tipo de cuenta   | Panel habilitado      |
        | Juan Pérez   | Nombre, Email, Contraseña    | Donante          | Panel de donaciones   |
        | María Gómez  | Nombre, Email, Contraseña    | Donante          | Panel de donaciones   |
        | Carlos Ruiz  | Nombre, Email, Contraseña    | Donante          | Panel de donaciones   |

    Scenario: Administrador de campaña 
    Given que el usuario representa una organización, 
    When ingresa su correo institucional y selecciona “Administrador”, 
    Then se crea la cuenta y se habilita el panel de campañas. 

    Example: 
        | Usuario      | Correo institucional           | Tipo de cuenta       | Panel habilitado   |
        | Ana López    | analopez@institucion.pe.com    | Administrador        | Panel de campañas  |
        | María Gómez  | mariagomez@institucion.pe.com  | Administrador        | Panel de campañas  |
        | Carlos Ruiz  | carlosruiz@hotmail.com         | Administrador        | Panel de campañas  |

    Scenario: Reciclador/Ecoemprendedor 
    Given que el usuario busca materiales reciclables, 
    When completa su perfil y elige “Reciclador/Ecoemprendedor”, 
    Then el sistema genera la cuenta y redirige al panel de solicitudes.

    Example: 
        | Usuario      | Perfil completado           | Tipo de cuenta            | Panel habilitado       |
        | Juan Pérez   | Nombre, Email, Contraseña   | Reciclador/Ecoemprendedor | Panel de solicitudes   |
        | Ana López    | Nombre, Email, Contraseña   | Reciclador/Ecoemprendedor | Panel de solicitudes   |
        | Carlos Ruiz  | Nombre, Email, Contraseña   | Reciclador/Ecoemprendedor | Panel de solicitudes   |
