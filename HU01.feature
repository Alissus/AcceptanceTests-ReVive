Feature: HU01 - Evidencias multimedia de campañas de donación
    Scenario: Acceso a evidencia multimedia por institución
    Given que el ciudadano ha seleccionado una institución desde la app o la web, 
    When accede a la opción "Donaciones previas" dentro del perfil institucional, 
    Then el sistema mostrará una galería con vídeos e imágenes de campañas anteriores, incluyendo fecha, descripción breve y tipo de donación realizada. 

    Example: 
        |institución     |Donaciones previas | galería                                                                  |
        |Fundación XYZ   |3 campañas previas | Vídeo de campaña de ropa (01/03/2024), Imagen de donación de alimentos (15/02/2024), Vídeo de campaña de juguetes (20/01/2024)|
        |ONG Amigos      |1 campaña previa   | Imagen de donación de libros (10/02/2024)|
        |Asociación Verde|2 campañas previas | Vídeo de campaña de reciclaje (05/03/2024), Imagen de donación de plantas (25/02/2024)|

    Scenario: Institución sin contenido multimedia disponible
    Given que el ciudadano está viendo el perfil de una institución que no ha registrado contenido multimedia 
    When accede a la opción "Donaciones previas" dentro del perfil institucional, 
    Then se mostrará un mensaje informando que aún no hay evidencia publicada por la institución.

    Example:
        |institución        |Donaciones previas | galería                                      |
        |Iglesia 1          |2 campañas previas | No hay evidencia publicada por la institución|
        |Centro Comunitario |0 campañas previas | No hay evidencia publicada por la institución|
        |Floristería Local  |0 campañas previas | No hay evidencia publicada por la institución|
